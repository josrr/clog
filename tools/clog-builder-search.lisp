(in-package :clog-tools)

(defun on-file-search (obj &key (dir ""))
  "Open file search"
  (let* ((app (connection-data-item obj "builder-app-data"))
         (*default-title-class*      *builder-title-class*)
         (*default-border-class*     *builder-border-class*)
         (win (create-gui-window obj :title (format nil "Search in ~A"
                                                    dir)
                                 :top (+ (menu-bar-height obj) 20)
                                 :left 20
                                 :width 1040 :height 600
                                 :client-movement *client-side-movement*))
         (panel (create-panel-search (window-content win))))
    (set-on-window-size win (lambda (obj)
                              (declare (ignore obj))
                              (clog-ace:resize (preview-ace panel))))
    (setf (current-editor-is-lisp app) "clog-user")
    (setup-lisp-ace (preview-ace panel) nil)
    (set-on-window-focus win
                         (lambda (obj)
                           (declare (ignore obj))
                           (setf (current-editor-is-lisp app) "clog-user")))
    (set-on-input (result-box panel) (lambda (obj)
                                        (let* ((fname (text-value obj))
                                               (regex   (text-value (grep-input panel)))
                                               (c     (read-file fname :report-errors nil)))
                                          (cond ((or (equalp (pathname-type fname) "lisp")
                                                     (equalp (pathname-type fname) "asd"))
                                                  (setf (clog-ace:mode (preview-ace panel)) "ace/mode/lisp"))
                                                (t
                                                  (if (equalp (pathname-type fname) "clog")
                                                      (setf (clog-ace:mode (preview-ace panel)) "ace/mode/html")
                                                      (setf (clog-ace:mode (preview-ace panel))
                                                            (clog-ace:get-mode-from-extension (preview-ace panel) fname)))))
                                          (setf (text-value (preview-ace panel)) c)
                                          (clog-ace:resize (preview-ace panel))
                                          (js-execute obj (format nil "~A.find('~A',{caseSensitive:false,regExp:true})"
                                                                  (clog-ace::js-ace (preview-ace panel)) regex))
                                          (clog-ace:execute-command (preview-ace panel) "find"))
                                        (focus (result-box panel))))
    (setf (text-value (dir-input panel)) dir)))

(defun panel-search-dir-change (panel target)
  (setf (window-title (parent (parent panel)))
        (format nil "Search Project Dir ~A" (text-value target))))

(defun panel-search-on-click (panel target)
  (declare (ignore target))
  (destroy-children (result-box panel))
  (let* ((subdirs (checkedp (subdir-check panel)))
         (nregex  (text-value (name-regex-input panel)))
         (sn      (ppcre:create-scanner nregex :case-insensitive-mode t))
         (regex   (text-value (grep-input panel)))
         (s       (ppcre:create-scanner regex :case-insensitive-mode t)))
    (labels ((do-search (dir prefix)
               (dolist (item (uiop:directory-files dir))
                 (let ((fname (format nil "~A" item)))
                   (when (ppcre:scan sn fname)
                     (let ((c (read-file fname :report-errors nil)))
                       (when (and c
                                  (ppcre:scan s c))
                         (let ((li (create-option (result-box panel)
                                                  :content (format nil "~A~A" prefix (file-namestring item))
                                                  :value fname)))
                           (set-on-double-click li (lambda (obj)
                                                     (declare (ignore obj))
                                                     (on-open-file panel :open-file fname
                                                                   :show-find t
                                                                   :regex regex)))))))))
               (when subdirs
                 (dolist (item (uiop:subdirectories dir))
                   (do-search item (format nil "~A~A/" prefix (first (last (pathname-directory item)))))))))
      (do-search (text-value (dir-input panel)) ""))))