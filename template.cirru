
var
  stir $ require :stir-template
  (object~ html head title link meta script body div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null :Manuscript
        meta $ object (:charset :utf-8)
        script $ object (:src data.main) (:defer true)
        link $ object (:rel :icon) (:href :images/manuscript.png)
        link $ object (:rel :stylesheet) (:href :style/main.css)
      body null
