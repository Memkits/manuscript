
(ns app.schema )

(def draft {:id nil, :text "", :touch-id nil})

(def store
  {:states {},
   :drafts (let [zero "zero"] {zero (merge draft {:id zero, :touch-id zero})}),
   :pointer "zero"})
