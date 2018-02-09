
(ns app.util )

(defn focus-text! []
  (js/requestAnimationFrame
   (fn []
     (let [element (.querySelector js/document ".text")] (println "ok") (.focus element)))))
