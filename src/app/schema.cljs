
(ns app.schema )

(def config {:storage-key "manuscript"})

(def draft {:id nil, :text "", :touch-id nil, :mono? false})

(def store
  {:states {},
   :drafts (let [zero "zero"] {zero (merge draft {:id zero, :touch-id zero})}),
   :pointer "zero",
   :version nil})
