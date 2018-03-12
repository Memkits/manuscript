
(ns app.updater
  (:require [respo.cursor :refer [mutate]]
            [clojure.string :as string]
            [app.schema :as schema]))

(defn updater [store op op-data op-id op-time]
  (let [pointer (:pointer store)]
    (case op
      :states (update store :states (mutate op-data))
      :text
        (-> store
            (assoc-in [:drafts pointer :text] op-data)
            (assoc-in [:drafts pointer :touch-id] op-time)
            (update
             :drafts
             (fn [drafts]
               (let [empty-drafts (->> drafts
                                       (vals)
                                       (filter (fn [draft] (string/blank? (:text draft)))))]
                 (cond
                   (= 1 (count empty-drafts)) drafts
                   (zero? (count empty-drafts))
                     (assoc drafts op-id (merge schema/draft {:id op-id, :touch-id op-time}))
                   :else
                     (let [empty-ids (disj (set (map :id empty-drafts)) pointer)]
                       (apply dissoc drafts empty-ids)))))))
      :pointer (assoc store :pointer op-data)
      :hydrate-storage op-data
      :mono (update-in store [:drafts (:pointer store) :mono?] not)
      (do (println "Unknown op:" op) store))))
