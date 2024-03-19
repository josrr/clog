;;;; CLOG Builder generated code - modify original .clog file and rerender
(in-package :clog-tools)
(defclass projects (clog:clog-panel)
          ((open-ext :reader open-ext) (ext-win-label :reader ext-win-label)
           (design-plugin :reader design-plugin)
           (design-del-dep :reader design-del-dep)
           (design-add-dep :reader design-add-dep)
           (design-deps :reader design-deps)
           (design-deps-label :reader design-deps-label)
           (designtime-delete :reader designtime-delete)
           (designtime-add-lisp :reader designtime-add-lisp)
           (designtime-add-clog :reader designtime-add-clog)
           (designtime-list :reader designtime-list)
           (designtime-label :reader designtime-label)
           (runtime-del-dep :reader runtime-del-dep)
           (runtime-add-dep :reader runtime-add-dep)
           (runtime-deps :reader runtime-deps) (dbl-click2 :reader dbl-click2)
           (runtime-deps-label :reader runtime-deps-label)
           (runtime-dir :reader runtime-dir)
           (runtime-delete :reader runtime-delete)
           (runtime-add-lisp :reader runtime-add-lisp)
           (runtime-list :reader runtime-list) (dbl-click1 :reader dbl-click1)
           (runtime-label :reader runtime-label)
           (file-group :reader file-group)
           (rerender-button :reader rerender-button)
           (reload-project-button :reader reload-project-button)
           (unload-project-button :reader unload-project-button)
           (new-project-button :reader new-project-button)
           (run-button :reader run-button) (entry-point :reader entry-point)
           (entry-point-label :reader entry-point-label)
           (edit-asd :reader edit-asd) (project-list :reader project-list)
           (projects-label :reader projects-label)))
(defun create-projects
       (clog-obj &key (hidden nil) (class nil) (html-id nil) (auto-place t))
  (let ((panel
         (change-class
          (clog:create-div clog-obj :content
                           "<label for=\"undefined\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 6.99858px;\" id=\"CLOGB3918817929\" data-clog-name=\"projects-label\">Current Project</label><select style=\"box-sizing: content-box; position: absolute; left: 5px; top: 35px; width: 386.54px; height: 22px; bottom: 309.041px;\" id=\"CLOGB3918817930\" data-clog-name=\"project-list\"></select><button style=\"box-sizing: content-box; position: absolute; left: 400px; top: 32px; height: 22px; width: 90px;\" title=\"Manualy projects .asd file\" id=\"CLOGB3918817931\" data-clog-name=\"edit-asd\">Edit .asd</button><label for=\"CLOGB386871257741\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 69px;\" id=\"CLOGB3918817932\" data-clog-name=\"entry-point-label\">Entry Point - package:function</label><input type=\"TEXT\" value=\"\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 94px; width: 381px; height: 22.5px;\" id=\"CLOGB3918817933\" data-clog-name=\"entry-point\"><button style=\"box-sizing: content-box; position: absolute; left: 400px; top: 92px; width: 90px; height: 22.5px;\" id=\"CLOGB3918817934\" data-clog-name=\"run-button\">Run</button><button style=\"box-sizing: content-box; position: absolute; left: 520px; top: 8px; width: 100px; height: 22px;\" title=\"Create new project from template\" id=\"CLOGB3918817935\" data-clog-name=\"new-project-button\">New</button><button style=\"box-sizing: content-box; position: absolute; left: 520px; top: 43px; width: 100px; height: 22px; bottom: 309.041px;\" title=\"ASDF unload project from Lisp image\" id=\"CLOGB3918817936\" data-clog-name=\"unload-project-button\">Unload</button><button style=\"box-sizing: content-box; position: absolute; left: 521px; top: 79px; width: 100px; height: 22px; bottom: 309.041px;\" title=\"ASDF reload project in to Lisp image\" id=\"CLOGB3918817937\" data-clog-name=\"reload-project-button\">Reload</button><button style=\"box-sizing: content-box; position: absolute; left: 521px; top: 116px; width: 100px;\" tabindex=\"0\" title=\"Rerender all clog files to Lisp\" id=\"CLOGB3918817938\" data-clog-name=\"rerender-button\">Rerender</button><div style=\"box-sizing: content-box; position: absolute; left: 0px; top: 69px; width: 512px; height: 10px;\" id=\"CLOGB3918817939\" data-clog-name=\"file-group\"><label for=\"CLOGB3868393710\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 65px;\" id=\"CLOGB3918817940\" data-clog-name=\"runtime-label\">Runtime System</label><label for=\"CLOGB3868452429\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 85px;\" id=\"CLOGB3918817941\" data-clog-name=\"dbl-click1\">(double click to launch)</label><select size=\"4\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 115px; width: 260px; height: 196px;\" id=\"CLOGB3918817942\" data-clog-name=\"runtime-list\"></select><button style=\"box-sizing: content-box; position: absolute; left: 5px; top: 320px;\" id=\"CLOGB3918817943\" data-clog-name=\"runtime-add-lisp\">Add .lisp</button><button style=\"box-sizing: content-box; position: absolute; left: 93px; top: 320px; width: 65px; height: 22px;\" id=\"CLOGB3918817944\" data-clog-name=\"runtime-delete\">Remove</button><button style=\"box-sizing: content-box; position: absolute; left: 180px; top: 320px; width: 65px;\" id=\"CLOGB3918817945\" data-clog-name=\"runtime-dir\">View Dir</button><label for=\"CLOGB3868619266\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 365px;\" id=\"CLOGB3918817946\" data-clog-name=\"runtime-deps-label\">Runtime Dependencies</label><label for=\"CLOGB3868452430\" style=\"box-sizing: content-box; position: absolute; left: 290px; top: 85px;\" id=\"CLOGB3918817947\" data-clog-name=\"dbl-click2\">(double click to launch)</label><select size=\"4\" style=\"box-sizing: content-box; position: absolute; left: 5px; top: 395px; width: 260px; height: 75px;\" id=\"CLOGB3918817948\" data-clog-name=\"runtime-deps\"></select><button style=\"box-sizing: content-box; position: absolute; left: 5px; top: 480px; width: 65px;\" id=\"CLOGB3918817949\" data-clog-name=\"runtime-add-dep\">Add</button><button style=\"box-sizing: content-box; position: absolute; left: 95px; top: 480px; width: 65px; height: 22px;\" id=\"CLOGB3918817950\" data-clog-name=\"runtime-del-dep\">Remove</button><label for=\"CLOGB3868393704\" style=\"box-sizing: content-box; position: absolute; left: 290.007px; top: 65px;\" id=\"CLOGB3918817951\" data-clog-name=\"designtime-label\">Design Time System (/tools)</label><select size=\"4\" style=\"box-sizing: content-box; position: absolute; left: 290px; top: 115px; width: 265px; height: 195.545px;\" id=\"CLOGB3918817952\" data-clog-name=\"designtime-list\"></select><button style=\"box-sizing: content-box; position: absolute; left: 290px; top: 320px;\" id=\"CLOGB3918817953\" data-clog-name=\"designtime-add-clog\">Add .clog</button><button style=\"box-sizing: content-box; position: absolute; left: 386px; top: 320px;\" id=\"CLOGB3918817954\" data-clog-name=\"designtime-add-lisp\">Add .lisp</button><button style=\"box-sizing: content-box; position: absolute; left: 478px; top: 320px; width: 65px; height: 22px;\" id=\"CLOGB3918817955\" data-clog-name=\"designtime-delete\">Remove</button><label for=\"CLOGB3868619268\" style=\"box-sizing: content-box; position: absolute; left: 290px; top: 365px;\" id=\"CLOGB3918817956\" data-clog-name=\"design-deps-label\">Design Dependencies</label><select size=\"4\" style=\"box-sizing: content-box; position: absolute; left: 290px; top: 395px; width: 263.358px; height: 75px;\" id=\"CLOGB3918817957\" data-clog-name=\"design-deps\"></select><button style=\"box-sizing: content-box; position: absolute; left: 290px; top: 480px; width: 65px; height: 22px;\" id=\"CLOGB3918817958\" data-clog-name=\"design-add-dep\">Add</button><button style=\"box-sizing: content-box; position: absolute; left: 380px; top: 480px; width: 65px; height: 22px;\" id=\"CLOGB3918817959\" data-clog-name=\"design-del-dep\">Remove</button><button style=\"box-sizing: content-box; position: absolute; left: 470px; top: 480px; width: 65px; height: 22px;\" id=\"CLOGB3918817960\" data-clog-name=\"design-plugin\">Plugin</button></div>
<label for=\"CLOGB391881683346\" style=\"box-sizing: content-box; position: absolute; left: 531px; top: 151px;\" class=\"\" id=\"CLOGB3918817961\" data-clog-name=\"ext-win-label\">Open External</label><input type=\"CHECKBOX\" value=\"\" style=\"box-sizing: content-box; position: absolute; left: 513px; top: 155px;\" id=\"CLOGB3918817962\" data-clog-name=\"open-ext\">"
                           :hidden hidden :class class :html-id html-id
                           :auto-place auto-place)
          'projects)))
    (setf (slot-value panel 'open-ext)
            (attach-as-child clog-obj "CLOGB3918817962" :clog-type
             'clog:clog-form-element :new-id t))
    (setf (slot-value panel 'ext-win-label)
            (attach-as-child clog-obj "CLOGB3918817961" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'design-plugin)
            (attach-as-child clog-obj "CLOGB3918817960" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'design-del-dep)
            (attach-as-child clog-obj "CLOGB3918817959" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'design-add-dep)
            (attach-as-child clog-obj "CLOGB3918817958" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'design-deps)
            (attach-as-child clog-obj "CLOGB3918817957" :clog-type
             'clog:clog-select :new-id t))
    (setf (slot-value panel 'design-deps-label)
            (attach-as-child clog-obj "CLOGB3918817956" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'designtime-delete)
            (attach-as-child clog-obj "CLOGB3918817955" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'designtime-add-lisp)
            (attach-as-child clog-obj "CLOGB3918817954" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'designtime-add-clog)
            (attach-as-child clog-obj "CLOGB3918817953" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'designtime-list)
            (attach-as-child clog-obj "CLOGB3918817952" :clog-type
             'clog:clog-select :new-id t))
    (setf (slot-value panel 'designtime-label)
            (attach-as-child clog-obj "CLOGB3918817951" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'runtime-del-dep)
            (attach-as-child clog-obj "CLOGB3918817950" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'runtime-add-dep)
            (attach-as-child clog-obj "CLOGB3918817949" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'runtime-deps)
            (attach-as-child clog-obj "CLOGB3918817948" :clog-type
             'clog:clog-select :new-id t))
    (setf (slot-value panel 'dbl-click2)
            (attach-as-child clog-obj "CLOGB3918817947" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'runtime-deps-label)
            (attach-as-child clog-obj "CLOGB3918817946" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'runtime-dir)
            (attach-as-child clog-obj "CLOGB3918817945" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'runtime-delete)
            (attach-as-child clog-obj "CLOGB3918817944" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'runtime-add-lisp)
            (attach-as-child clog-obj "CLOGB3918817943" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'runtime-list)
            (attach-as-child clog-obj "CLOGB3918817942" :clog-type
             'clog:clog-select :new-id t))
    (setf (slot-value panel 'dbl-click1)
            (attach-as-child clog-obj "CLOGB3918817941" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'runtime-label)
            (attach-as-child clog-obj "CLOGB3918817940" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'file-group)
            (attach-as-child clog-obj "CLOGB3918817939" :clog-type
             'clog:clog-div :new-id t))
    (setf (slot-value panel 'rerender-button)
            (attach-as-child clog-obj "CLOGB3918817938" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'reload-project-button)
            (attach-as-child clog-obj "CLOGB3918817937" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'unload-project-button)
            (attach-as-child clog-obj "CLOGB3918817936" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'new-project-button)
            (attach-as-child clog-obj "CLOGB3918817935" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'run-button)
            (attach-as-child clog-obj "CLOGB3918817934" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'entry-point)
            (attach-as-child clog-obj "CLOGB3918817933" :clog-type
             'clog:clog-form-element :new-id t))
    (setf (slot-value panel 'entry-point-label)
            (attach-as-child clog-obj "CLOGB3918817932" :clog-type
             'clog:clog-label :new-id t))
    (setf (slot-value panel 'edit-asd)
            (attach-as-child clog-obj "CLOGB3918817931" :clog-type
             'clog:clog-button :new-id t))
    (setf (slot-value panel 'project-list)
            (attach-as-child clog-obj "CLOGB3918817930" :clog-type
             'clog:clog-select :new-id t))
    (setf (slot-value panel 'projects-label)
            (attach-as-child clog-obj "CLOGB3918817929" :clog-type
             'clog:clog-label :new-id t))
    (let ((target (projects-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'projects-list\\']').attr('id')")))
    (let ((target (project-list panel)))
      (declare (ignorable target))
      (projects-setup panel))
    (let ((target (entry-point-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'entry-point\\']').attr('id')")))
    (let ((target (runtime-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'runtime-list\\']').attr('id')")))
    (let ((target (dbl-click1 panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'runtime-list\\']').attr('id')")))
    (let ((target (runtime-deps-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'runtime-deps\\']').attr('id')")))
    (let ((target (dbl-click2 panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'designtime-list\\']').attr('id')")))
    (let ((target (designtime-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'designtime-list\\']').attr('id')")))
    (let ((target (design-deps-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'design-deps\\']').attr('id')")))
    (let ((target (ext-win-label panel)))
      (declare (ignorable target))
      (setf (attribute target "for")
              (clog:js-query target
                             "$('[data-clog-name=\\'open-ext\\']').attr('id')")))
    (clog:set-on-change (project-list panel)
                        (lambda (target)
                          (declare (ignorable target))
                          (projects-populate panel)))
    (clog:set-on-click (edit-asd panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sel (text-value (project-list panel))))
                           (on-open-file panel :open-file
                            (asdf:system-source-file
                             (asdf:find-system sel))))))
    (clog:set-on-change (entry-point panel)
                        (lambda (target)
                          (declare (ignorable target))
                          (projects-entry-point-change panel)))
    (clog:set-on-click (run-button panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (projects-run panel)))
    (clog:set-on-click (new-project-button panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (on-new-app-template panel)))
    (clog:set-on-click (unload-project-button panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sel (text-value (project-list panel))))
                           (unless (equal sel "None")
                             (asdf:clear-system sel)
                             (setf (text-value (project-list panel)) "None")
                             (projects-populate panel)))))
    (clog:set-on-click (reload-project-button panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sel (text-value (project-list panel))))
                           (unless (equal sel "None")
                             (asdf:clear-system sel)
                             (projects-populate panel)))))
    (clog:set-on-click (rerender-button panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (projects-rerender panel)))
    (clog:set-on-double-click (runtime-list panel)
                              (lambda (target)
                                (declare (ignorable target))
                                (open-projects-component target panel
                                 (text-value (project-list panel)) target)))
    (clog:set-on-click (runtime-add-lisp panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel))))
                           (projects-add-lisp panel sys))))
    (clog:set-on-click (runtime-delete panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel)))
                               (file (select-text (runtime-list panel))))
                           (unless (equal file "")
                             (setf file (subseq file 0 (- (length file) 5)))
                             (remove-file-from-defsystem sys file :file)
                             (projects-populate panel)))))
    (clog:set-on-click (runtime-dir panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (projects-view-dir panel)))
    (clog:set-on-click (runtime-add-dep panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel))))
                           (projects-add-dep panel sys))))
    (clog:set-on-click (runtime-del-dep panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel)))
                               (file (select-text (runtime-deps panel))))
                           (remove-dep-from-defsystem sys file)
                           (projects-populate panel))))
    (clog:set-on-double-click (designtime-list panel)
                              (lambda (target)
                                (declare (ignorable target))
                                (open-projects-component target panel
                                 (format nil "~A/tools"
                                         (text-value (project-list panel)))
                                 target)))
    (clog:set-on-click (designtime-add-clog panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel))))
                           (projects-add-clog panel sys))))
    (clog:set-on-click (designtime-add-lisp panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys
                                (format nil "~A/tools"
                                        (text-value (project-list panel)))))
                           (projects-add-lisp panel sys))))
    (clog:set-on-click (designtime-delete panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys
                                (format nil "~A/tools"
                                        (text-value (project-list panel))))
                               (file (select-text (designtime-list panel)))
                               ext)
                           (unless (equal file "")
                             (setf ext (subseq file (- (length file) 5)))
                             (setf file (subseq file 0 (- (length file) 5)))
                             (remove-file-from-defsystem sys file
                              (if (equalp ext ".clog")
                                  :clog-file
                                  :file))
                             (projects-populate panel)))))
    (clog:set-on-click (design-add-dep panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys
                                (format nil "~A/tools"
                                        (text-value (project-list panel)))))
                           (projects-add-dep panel sys))))
    (clog:set-on-click (design-del-dep panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys
                                (format nil "~A/tools"
                                        (text-value (project-list panel))))
                               (file (select-text (design-deps panel))))
                           (remove-dep-from-defsystem sys file)
                           (projects-populate panel))))
    (clog:set-on-click (design-plugin panel)
                       (lambda (target)
                         (declare (ignorable target))
                         (let ((sys (text-value (project-list panel))))
                           (projects-add-plugin panel sys))))
    panel))
