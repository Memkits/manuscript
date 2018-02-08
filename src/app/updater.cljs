
(ns app.updater
  (:require [respo.cursor :refer [mutate]]
            [clojure.string :as string]
            [app.schema :as schema]))

(defn updater [store op op-data op-id]
  (let [pointer (:pointer store)]
    (case op
      :states (update store :states (mutate op-data))
      :text
        (-> store
            (assoc-in [:drafts pointer :text] op-data)
            (update
             :drafts
             (fn [drafts]
               (let [empty-drafts (->> drafts
                                       (vals)
                                       (filter (fn [draft] (string/blank? (:text draft)))))]
                 (cond
                   (= 1 (count empty-drafts)) drafts
                   (zero? (count empty-drafts))
                     (assoc drafts op-id (merge schema/draft {:id op-id}))
                   :else
                     (let [empty-ids (disj (set (map :id empty-drafts)) pointer)]
                       (apply dissoc drafts empty-ids)))))))
      :pointer (assoc store :pointer op-data)
      (do (println "Unknown op:" op) store))))
