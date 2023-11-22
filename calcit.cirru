
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defcomp)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at nil) (:by nil) (:text |let)
                  |L $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |:store)
                              |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |states)
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |:states)
                              |j $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                      |n $ %{} :Expr (:at 1628935306573) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935307439) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1628935312323) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1628935314046) (:by |rJG4IHzWf) (:text |or)
                              |T $ %{} :Expr (:at 1628935308153) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935311134) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1628935311972) (:by |rJG4IHzWf) (:text |states)
                              |j $ %{} :Expr (:at 1628935314556) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935314988) (:by |rJG4IHzWf) (:text |[])
                      |r $ %{} :Expr (:at 1518105274909) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518105277097) (:by |root) (:text |drafts)
                          |j $ %{} :Expr (:at 1518105278762) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518105281331) (:by |root) (:text |:drafts)
                              |T $ %{} :Leaf (:at 1518105277939) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1518105324081) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518105326023) (:by |root) (:text |pointer)
                          |j $ %{} :Expr (:at 1518105326411) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518105327371) (:by |root) (:text |:pointer)
                              |j $ %{} :Leaf (:at 1518105328128) (:by |root) (:text |store)
                      |x $ %{} :Expr (:at 1520845709686) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520845710743) (:by |root) (:text |mono?)
                          |j $ %{} :Expr (:at 1520845516528) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1520845518695) (:by |root) (:text |get-in)
                              |T $ %{} :Leaf (:at 1520528514150) (:by |root) (:text |store)
                              |j $ %{} :Expr (:at 1520845519595) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520845519903) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1520845521630) (:by |root) (:text |:drafts)
                                  |r $ %{} :Leaf (:at 1520845678645) (:by |root) (:text |pointer)
                                  |v $ %{} :Leaf (:at 1520845532013) (:by |root) (:text |:mono?)
                  |T $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |div)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                          |j $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700668186111) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at nil) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700668193279) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |j $ %{} :Leaf (:at 1700668195586) (:by |rJG4IHzWf) (:text |css/global)
                                  |n $ %{} :Leaf (:at 1700668197341) (:by |rJG4IHzWf) (:text |css/fullscreen)
                                  |r $ %{} :Leaf (:at 1700668199167) (:by |rJG4IHzWf) (:text |css/row)
                      |q $ %{} :Expr (:at 1628936883865) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1628936884891) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1628936885281) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628936886358) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1628936888181) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700669387645) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1700669394641) (:by |rJG4IHzWf) (:text |style-side-container)
                          |T $ %{} :Expr (:at 1518104806484) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518105016151) (:by |root) (:text |list->)
                              |j $ %{} :Expr (:at 1518104809966) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518104810919) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1628937080957) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1628937083572) (:by |rJG4IHzWf) (:text |:style)
                                      |T $ %{} :Expr (:at 1628937084111) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1628937087630) (:by |rJG4IHzWf) (:text |{})
                                          |T $ %{} :Expr (:at 1628937038308) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1628937042172) (:by |rJG4IHzWf) (:text |:height)
                                              |j $ %{} :Expr (:at 1628937070263) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1628937071142) (:by |rJG4IHzWf) (:text |+)
                                                  |L $ %{} :Leaf (:at 1628937076174) (:by |rJG4IHzWf) (:text |120)
                                                  |T $ %{} :Expr (:at 1628937055710) (:by |rJG4IHzWf)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1628937056606) (:by |rJG4IHzWf) (:text |*)
                                                      |j $ %{} :Leaf (:at 1628937180334) (:by |rJG4IHzWf) (:text |32)
                                                      |r $ %{} :Expr (:at 1628937059790) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1628937062791) (:by |rJG4IHzWf) (:text |count)
                                                          |j $ %{} :Leaf (:at 1628937066245) (:by |rJG4IHzWf) (:text |drafts)
                              |r $ %{} :Expr (:at 1518105021029) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935344592) (:by |rJG4IHzWf) (:text |->)
                                  |j $ %{} :Leaf (:at 1518105286023) (:by |root) (:text |drafts)
                                  |n $ %{} :Expr (:at 1628935360662) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628935362428) (:by |rJG4IHzWf) (:text |.to-list)
                                  |o $ %{} :Expr (:at 1628935866725) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628935866725) (:by |rJG4IHzWf) (:text |.map)
                                      |j $ %{} :Leaf (:at 1628935866725) (:by |rJG4IHzWf) (:text |last)
                                  |p $ %{} :Expr (:at 1518190452245) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628935368387) (:by |rJG4IHzWf) (:text |.sort-by)
                                      |j $ %{} :Expr (:at 1518190456420) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518190458867) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1518190459714) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518190462469) (:by |root) (:text |draft)
                                          |r $ %{} :Expr (:at 1519901102919) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1628935373397) (:by |rJG4IHzWf) (:text |negate)
                                              |T $ %{} :Expr (:at 1519900817727) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1519900818356) (:by |root) (:text |if)
                                                  |L $ %{} :Expr (:at 1519900818714) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1700669458123) (:by |rJG4IHzWf) (:text |blank?)
                                                      |j $ %{} :Expr (:at 1519900824058) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1519900824929) (:by |root) (:text |:text)
                                                          |j $ %{} :Leaf (:at 1519900825913) (:by |root) (:text |draft)
                                                  |P $ %{} :Leaf (:at 1519900909731) (:by |root) (:text |js/Number.MAX_VALUE)
                                                  |T $ %{} :Expr (:at 1518190464618) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518190466783) (:by |root) (:text |:touch-id)
                                                      |j $ %{} :Leaf (:at 1518190467692) (:by |root) (:text |draft)
                                  |r $ %{} :Expr (:at 1518105032280) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518190571823) (:by |root) (:text |map-indexed)
                                      |j $ %{} :Expr (:at 1518105048010) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518105048302) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1518105048609) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1518190574844) (:by |root) (:text |idx)
                                              |T $ %{} :Leaf (:at 1518105050372) (:by |root) (:text |draft)
                                          |r $ %{} :Expr (:at 1518190530175) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1518190538204) (:by |root) (:text |[])
                                              |L $ %{} :Expr (:at 1518190538558) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518190539142) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1518190540568) (:by |root) (:text |draft)
                                              |T $ %{} :Expr (:at 1518191279219) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |comp-title)
                                                  |j $ %{} :Leaf (:at 1518191282372) (:by |root) (:text |draft)
                                                  |r $ %{} :Leaf (:at 1518191283454) (:by |root) (:text |idx)
                                                  |v $ %{} :Leaf (:at 1518191301715) (:by |root) (:text |pointer)
                                  |v $ %{} :Expr (:at 1518190589167) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628935369845) (:by |rJG4IHzWf) (:text |.sort-by)
                                      |j $ %{} :Leaf (:at 1518190591422) (:by |root) (:text |first)
                      |t $ %{} :Expr (:at 1518104863503) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518104865666) (:by |root) (:text |textarea)
                          |j $ %{} :Expr (:at 1518104865958) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518104866267) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1518105268553) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105269366) (:by |root) (:text |:value)
                                  |j $ %{} :Expr (:at 1518106389771) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518106391359) (:by |root) (:text |:text)
                                      |T $ %{} :Expr (:at 1518105269692) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518105272246) (:by |root) (:text |get)
                                          |j $ %{} :Leaf (:at 1518105291441) (:by |root) (:text |drafts)
                                          |r $ %{} :Leaf (:at 1518105330666) (:by |root) (:text |pointer)
                              |f $ %{} :Expr (:at 1520845918822) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520846052918) (:by |root) (:text |:spellcheck)
                                  |j $ %{} :Expr (:at 1520846066473) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520846067257) (:by |root) (:text |not)
                                      |T $ %{} :Leaf (:at 1520845924574) (:by |root) (:text |mono?)
                              |j $ %{} :Expr (:at 1518104869520) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518104872530) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1518104873358) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518104874867) (:by |root) (:text |merge)
                                      |v $ %{} :Expr (:at 1520845769900) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520845771021) (:by |root) (:text |if)
                                          |j $ %{} :Leaf (:at 1520845771943) (:by |root) (:text |mono?)
                                          |r $ %{} :Expr (:at 1520845773408) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520845773763) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1520845699966) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520845701582) (:by |root) (:text |:font-family)
                                                  |j $ %{} :Leaf (:at 1520845783890) (:by |root) (:text |ui/font-code)
                                              |r $ %{} :Expr (:at 1520845785147) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520845786564) (:by |root) (:text |:font-size)
                                                  |j $ %{} :Leaf (:at 1520845787706) (:by |root) (:text |14)
                              |n $ %{} :Expr (:at 1518106512906) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518106520666) (:by |root) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1700669244392) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1700669249212) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1700669251450) (:by |rJG4IHzWf) (:text |css/flex)
                                      |P $ %{} :Leaf (:at 1700669254768) (:by |rJG4IHzWf) (:text |css/textarea)
                                      |T $ %{} :Leaf (:at 1518106523684) (:by |root) (:text ||text)
                                      |b $ %{} :Leaf (:at 1700669425145) (:by |rJG4IHzWf) (:text |style-textbox)
                              |r $ %{} :Expr (:at 1518104887581) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518104898171) (:by |root) (:text |:placeholder)
                                  |j $ %{} :Leaf (:at 1519900698137) (:by |root) (:text ||new...)
                              |v $ %{} :Expr (:at 1518105298206) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105300585) (:by |root) (:text |:on-input)
                                  |j $ %{} :Expr (:at 1628935629122) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1628935629767) (:by |rJG4IHzWf) (:text |fn)
                                      |L $ %{} :Expr (:at 1628935629963) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1628935630546) (:by |rJG4IHzWf) (:text |e)
                                          |j $ %{} :Leaf (:at 1628935631566) (:by |rJG4IHzWf) (:text |d!)
                                      |T $ %{} :Expr (:at 1518105300827) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1628935628528) (:by |rJG4IHzWf) (:text |d!)
                                          |j $ %{} :Leaf (:at 1518105312754) (:by |root) (:text |:text)
                                          |r $ %{} :Expr (:at 1518105338954) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518105339659) (:by |root) (:text |:value)
                                              |j $ %{} :Leaf (:at 1628935640010) (:by |rJG4IHzWf) (:text |e)
                      |v $ %{} :Expr (:at 1520528511923) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |comp-mono)
                          |j $ %{} :Leaf (:at 1520845715085) (:by |root) (:text |mono?)
                      |x $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |comp-reel)
                          |b $ %{} :Expr (:at 1628935325680) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1628935328717) (:by |rJG4IHzWf) (:text |>>)
                              |T $ %{} :Leaf (:at 1628935329760) (:by |rJG4IHzWf) (:text |states)
                              |j $ %{} :Leaf (:at 1628935332050) (:by |rJG4IHzWf) (:text |:reel)
                          |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel)
                          |r $ %{} :Expr (:at nil) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                      |y $ %{} :Expr (:at 1518105981656) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1520845893516) (:by |root) (:text |;)
                          |T $ %{} :Leaf (:at 1518105984039) (:by |root) (:text |comp-inspect)
                          |j $ %{} :Leaf (:at 1520845669452) (:by |root) (:text ||draft)
                          |r $ %{} :Expr (:at 1520845671168) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520845672630) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1520845673321) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1520845673643) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520845673833) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1520845675069) (:by |root) (:text |:drafts)
                                  |r $ %{} :Leaf (:at 1520845681598) (:by |root) (:text |pointer)
                          |v $ %{} :Expr (:at 1518106020757) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518106022416) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1518106022692) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518106023887) (:by |root) (:text |:position)
                                  |j $ %{} :Leaf (:at 1518106025753) (:by |root) (:text |:absolute)
                              |r $ %{} :Expr (:at 1518106026354) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518106027873) (:by |root) (:text |:bottom)
                                  |j $ %{} :Leaf (:at 1518106028249) (:by |root) (:text |0)
        |comp-mono $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520528504107) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520528506063) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |comp-mono)
              |n $ %{} :Expr (:at 1520528506818) (:by |root)
                :data $ {}
                  |r $ %{} :Leaf (:at 1520845545770) (:by |root) (:text |mono?)
              |r $ %{} :Expr (:at 1520528504107) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |span)
                  |r $ %{} :Expr (:at 1520528504107) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1700669326767) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669332578) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1700669356734) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700669358891) (:by |rJG4IHzWf) (:text |str-spaced)
                              |L $ %{} :Leaf (:at 1700669361501) (:by |rJG4IHzWf) (:text |css/font-code)
                              |T $ %{} :Leaf (:at 1700669335624) (:by |rJG4IHzWf) (:text |style-mono-mark)
                      |j $ %{} :Expr (:at 1520528504107) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1520528504107) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |{})
                              |y $ %{} :Expr (:at 1520528504107) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |:color)
                                  |j $ %{} :Expr (:at 1520528504107) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |if)
                                      |f $ %{} :Leaf (:at 1520845552757) (:by |root) (:text |mono?)
                                      |r $ %{} :Expr (:at 1520528504107) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |40)
                                      |v $ %{} :Expr (:at 1520528504107) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |90)
                      |r $ %{} :Expr (:at 1520528504107) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1628935657516) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1628935658955) (:by |rJG4IHzWf) (:text |fn)
                              |L $ %{} :Expr (:at 1628935659395) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935659709) (:by |rJG4IHzWf) (:text |e)
                                  |j $ %{} :Leaf (:at 1628935660431) (:by |rJG4IHzWf) (:text |d!)
                              |T $ %{} :Expr (:at 1520528504107) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935656993) (:by |rJG4IHzWf) (:text |d!)
                                  |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |:mono)
                                  |r $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1520528504107) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520528504107) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1520528504107) (:by |root) (:text ||Mono)
        |comp-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518191265876) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518191269111) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |comp-title)
              |n $ %{} :Expr (:at 1518191270041) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518191275803) (:by |root) (:text |draft)
                  |j $ %{} :Leaf (:at 1518191276722) (:by |root) (:text |idx)
                  |r $ %{} :Leaf (:at 1518191304858) (:by |root) (:text |pointer)
              |r $ %{} :Expr (:at 1518191265876) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1518191265876) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1700669277110) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669279843) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1700669283420) (:by |rJG4IHzWf) (:text |style-title)
                      |j $ %{} :Expr (:at 1518191265876) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1518191265876) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |merge)
                              |f $ %{} :Expr (:at 1700669305209) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700669305566) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1700669306131) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |:top)
                                      |b $ %{} :Expr (:at 1700669306131) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |+)
                                          |b $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |16)
                                          |h $ %{} :Expr (:at 1700669306131) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |*)
                                              |b $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |idx)
                                              |h $ %{} :Leaf (:at 1700669306131) (:by |rJG4IHzWf) (:text |32)
                              |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |pointer)
                                      |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:id)
                                          |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |draft)
                                  |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |0)
                                              |v $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |100)
                                              |x $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |0.2)
                      |r $ %{} :Expr (:at 1518191265876) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1518191506895) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518191507450) (:by |root) (:text |fn)
                              |L $ %{} :Expr (:at 1518191507700) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191507945) (:by |root) (:text |e)
                                  |j $ %{} :Leaf (:at 1518191508848) (:by |root) (:text |d!)
                              |T $ %{} :Expr (:at 1518191265876) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191512030) (:by |root) (:text |d!)
                                  |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |draft)
                              |j $ %{} :Expr (:at 1518191512546) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191516542) (:by |root) (:text |focus-text!)
                  |r $ %{} :Expr (:at 1518191265876) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1518191265876) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1518191265876) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |text)
                              |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:text)
                                  |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |draft)
                      |r $ %{} :Expr (:at 1518191265876) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1518191265876) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935534135) (:by |rJG4IHzWf) (:text |.blank?)
                              |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |text)
                          |r $ %{} :Expr (:at 1518191265876) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1519900717541) (:by |root) (:text ||new...)
                              |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |100)
                                          |x $ %{} :Leaf (:at 1518191358445) (:by |root) (:text |0.3)
                          |v $ %{} :Expr (:at 1519900435921) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519900437801) (:by |root) (:text |let)
                              |L $ %{} :Expr (:at 1519900438222) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1519900438374) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519900462713) (:by |root) (:text |title)
                                      |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |first)
                                          |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1628935541502) (:by |rJG4IHzWf) (:text |.split-lines)
                                              |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |text)
                              |T $ %{} :Expr (:at 1519900446859) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1519900447370) (:by |root) (:text |if)
                                  |L $ %{} :Expr (:at 1519900447616) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628935536272) (:by |rJG4IHzWf) (:text |.blank?)
                                      |j $ %{} :Leaf (:at 1519900459786) (:by |root) (:text |title)
                                  |P $ %{} :Expr (:at 1519900466957) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519900467858) (:by |root) (:text |<>)
                                      |b $ %{} :Leaf (:at 1519900482449) (:by |root) (:text ||<private>)
                                      |j $ %{} :Expr (:at 1519900468200) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519900485130) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519900485753) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519900490425) (:by |root) (:text |:color)
                                              |j $ %{} :Expr (:at 1519900490757) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1519900492393) (:by |root) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1519900492684) (:by |root) (:text |0)
                                                  |r $ %{} :Leaf (:at 1519900492920) (:by |root) (:text |0)
                                                  |v $ %{} :Leaf (:at 1519900532338) (:by |root) (:text |80)
                                                  |x $ %{} :Leaf (:at 1519900538104) (:by |root) (:text |0.5)
                                          |r $ %{} :Expr (:at 1519900498796) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519900501458) (:by |root) (:text |:font-style)
                                              |j $ %{} :Leaf (:at 1519900504211) (:by |root) (:text |:italic)
                                  |T $ %{} :Expr (:at 1518191265876) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |<>)
                                      |f $ %{} :Leaf (:at 1519900472197) (:by |root) (:text |title)
                                      |r $ %{} :Expr (:at 1518191265876) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1518191265876) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1518191265876) (:by |root) (:text |:white)
        |style-mono-mark $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700669335964) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1700669337813) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700669335964) (:by |rJG4IHzWf) (:text |style-mono-mark)
              |h $ %{} :Expr (:at 1700669335964) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700669338928) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1700669339192) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700669340304) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1700669341242) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |{})
                          |h $ %{} :Expr (:at 1700669341242) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:absolute)
                          |l $ %{} :Expr (:at 1700669341242) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:right)
                              |b $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |8)
                          |o $ %{} :Expr (:at 1700669341242) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |8)
                          |s $ %{} :Expr (:at 1700669341242) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1700669341242) (:by |rJG4IHzWf) (:text |:pointer)
        |style-side-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700669395466) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1700669397344) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700669395466) (:by |rJG4IHzWf) (:text |style-side-container)
              |h $ %{} :Expr (:at 1700669398920) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1700669399481) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1700669400594) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1700669401859) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |240)
                          |h $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |170)
                                  |h $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |35)
                                  |l $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |24)
                          |l $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:relative)
                          |o $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:white)
                          |q $ %{} :Expr (:at 1700669398243) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1700669398243) (:by |rJG4IHzWf) (:text |:auto)
        |style-textbox $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700669425632) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1700669427497) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700669425632) (:by |rJG4IHzWf) (:text |style-textbox)
              |h $ %{} :Expr (:at 1700669428589) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1700669429188) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1700669429781) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1700669431069) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:border)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:none)
                          |h $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text ||1.6em)
                          |l $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |16)
                          |o $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:outline)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:none)
                          |q $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:white)
                          |s $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:resize)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:none)
                          |t $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text "||16px 8px")
                          |u $ %{} :Expr (:at 1700669428322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |:padding-bottom)
                              |b $ %{} :Leaf (:at 1700669428322) (:by |rJG4IHzWf) (:text |400)
        |style-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1700669284234) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1700669285847) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1700669284234) (:by |rJG4IHzWf) (:text |style-title)
              |h $ %{} :Expr (:at 1700669287143) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1700669287832) (:by |rJG4IHzWf) (:text |{})
                  |T $ %{} :Expr (:at 1700669289071) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1700669290336) (:by |rJG4IHzWf) (:text "|\"&")
                      |T $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text "||0 8px")
                          |h $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text ||32px)
                          |l $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:nowrap)
                          |o $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:hidden)
                          |q $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:text-overflow)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:ellipsis)
                          |s $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:pointer)
                          |u $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text ||300ms)
                          |v $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:transition-property)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text ||top)
                          |w $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:absolute)
                          |x $ %{} :Expr (:at 1700669286773) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1700669286773) (:by |rJG4IHzWf) (:text ||100%)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.comp.container)
            |v $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |b $ %{} :Expr (:at 1700668201342) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1700668216796) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1700668204252) (:by |rJG4IHzWf) (:text |:as)
                    |h $ %{} :Leaf (:at 1700668205193) (:by |rJG4IHzWf) (:text |css)
                |f $ %{} :Expr (:at 1700669292496) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1700669293665) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1700669294658) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1700669294868) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1700669296204) (:by |rJG4IHzWf) (:text |defstyle)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1628935514655) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |hsl)
                |r $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |ui)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1628935508124) (:by |rJG4IHzWf) (:text |respo.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1628935338607) (:by |rJG4IHzWf) (:text |>>)
                        |qT $ %{} :Leaf (:at 1518105018869) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at nil) (:by nil) (:text |<>)
                        |v $ %{} :Leaf (:at nil) (:by nil) (:text |div)
                        |x $ %{} :Leaf (:at nil) (:by nil) (:text |button)
                        |xT $ %{} :Leaf (:at nil) (:by nil) (:text |textarea)
                        |y $ %{} :Leaf (:at nil) (:by nil) (:text |span)
                |x $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |=<)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1518105039609) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518105043373) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1518105044164) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518105044673) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518105046591) (:by |root) (:text |map-val)
                |yj $ %{} :Expr (:at 1518105141902) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518105144213) (:by |root) (:text |clojure.string)
                    |r $ %{} :Leaf (:at 1518105144628) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1518105145364) (:by |root) (:text |string)
                |yr $ %{} :Expr (:at 1518106002042) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518106007338) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1518106008038) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518106008282) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518106011458) (:by |root) (:text |comp-inspect)
                |yv $ %{} :Expr (:at 1518191519120) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518191522352) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1518191523366) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518191523599) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518191524224) (:by |root) (:text |focus-text!)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935474221) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935475999) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1628935474221) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1628935474221) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935477002) (:by |rJG4IHzWf) (:text |=)
                  |j $ %{} :Leaf (:at 1628935478107) (:by |rJG4IHzWf) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1628935478509) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935480351) (:by |rJG4IHzWf) (:text |get-env)
                      |j $ %{} :Leaf (:at 1628935481215) (:by |rJG4IHzWf) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658750906327) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935608673) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935610370) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1628935608673) (:by |rJG4IHzWf) (:text |site)
              |r $ %{} :Expr (:at 1628935608673) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935611619) (:by |rJG4IHzWf) (:text |{})
                  |j $ %{} :Expr (:at 1628935611911) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935615786) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1628935618831) (:by |rJG4IHzWf) (:text "|\"manuscript")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1628935470632) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1628935470632) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1628935470632) (:by |rJG4IHzWf) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935646758) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |*reel)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at nil) (:by nil) (:text |->)
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |assoc)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |:base)
                      |r $ %{} :Leaf (:at 1518110747156) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |assoc)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |:store)
                      |r $ %{} :Leaf (:at 1518110809465) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |dispatch!)
              |r $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |op)
              |v $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |when)
                  |j $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |and)
                      |j $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1696787676552) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696787677488) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1696787678158) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |:states)
                  |r $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |println)
                      |j $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text "|\"Dispatch:")
                      |r $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |op)
              |x $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |reset!)
                  |j $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |*reel)
                  |r $ %{} :Expr (:at 1628935262099) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |updater)
                      |r $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1628935262099) (:by |rJG4IHzWf) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |main!)
              |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text "|\"release")
              |x $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |render-app!)
              |y $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |*reel)
                  |r $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |:changes)
                  |v $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |render-app!)
              |yT $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |dispatch!)
              |yj $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |.!addEventListener)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |js/window)
                  |r $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |event)
                      |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yr $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |repeat!)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |60)
                  |r $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yv $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |let)
                  |j $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |raw)
                          |j $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |.!getItem)
                              |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |js/localStorage)
                              |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |config/site)
                  |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |some?)
                          |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |raw)
                      |r $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1696787662578) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696787663301) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1696787663711) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |raw)
              |yx $ %{} :Expr (:at 1628935139501) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1628935139501) (:by |rJG4IHzWf) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |def)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |mount-target)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1628935281219) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at nil) (:by nil) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |persist-storage!)
              |r $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |.!setItem)
                  |j $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |js/localStorage)
                  |r $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1628935167182) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1628935167182) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |reload!)
              |r $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |build-errors)
                  |r $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |reset!)
                          |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |updater)
                      |y $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |v $ %{} :Expr (:at 1628935188249) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1628935188249) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defn)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |render-app!)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935824600) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |mount-target)
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1628935289741) (:by |rJG4IHzWf) (:text |dispatch!)
        |repeat! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |repeat!)
              |r $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |duration)
                  |j $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |cb)
              |v $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |js/setTimeout)
                  |j $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                        :data $ {}
                      |r $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |cb)
                      |v $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |repeat!)
                          |j $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |*)
                              |j $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |1000)
                              |r $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |duration)
                          |r $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |cb)
                  |r $ %{} :Expr (:at 1628935225742) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |*)
                      |j $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |1000)
                      |r $ %{} :Leaf (:at 1628935225742) (:by |rJG4IHzWf) (:text |duration)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.main)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |render!)
                        |r $ %{} :Leaf (:at nil) (:by nil) (:text |clear-cache!)
                |v $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |comp-container)
                |y $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.updater)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
                |yT $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |schema)
                |yj $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.util)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518190023903) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.core)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel-updater)
                        |v $ %{} :Leaf (:at nil) (:by nil) (:text |refresh-reel)
                |yv $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |reel.schema)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:as)
                    |v $ %{} :Leaf (:at nil) (:by nil) (:text |reel-schema)
                |yyT $ %{} :Expr (:at 1518191706757) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518191709516) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1518191710815) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1518191711034) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518191711626) (:by |root) (:text |focus-text!)
                |yyb $ %{} :Expr (:at 1628935442059) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1628935444482) (:by |rJG4IHzWf) (:text |app.config)
                    |j $ %{} :Leaf (:at 1628935444881) (:by |rJG4IHzWf) (:text |:as)
                    |r $ %{} :Leaf (:at 1628935446837) (:by |rJG4IHzWf) (:text |config)
                |yyj $ %{} :Expr (:at 1628935208746) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text |build-errors)
                |yyr $ %{} :Expr (:at 1628935208746) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1628935208746) (:by |rJG4IHzWf) (:text |hud!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |config $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518110033043) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518110034746) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518110033043) (:by |root) (:text |config)
              |r $ %{} :Expr (:at 1518110033043) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518110037015) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1518110037380) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518110040897) (:by |root) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1518110042978) (:by |root) (:text ||manuscript)
        |draft $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518104757761) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518104758465) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518104757761) (:by |root) (:text |draft)
              |r $ %{} :Expr (:at 1518104757761) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518104759391) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1518104759639) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518104760218) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1518104761140) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1518104761663) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518104763817) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1518104764047) (:by |root) (:text ||)
                  |v $ %{} :Expr (:at 1518104764939) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518104770928) (:by |root) (:text |:touch-id)
                      |j $ %{} :Leaf (:at 1518104772532) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1520528074411) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520528077366) (:by |root) (:text |:mono?)
                      |j $ %{} :Leaf (:at 1520528078181) (:by |root) (:text |false)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |def)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |store)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                  |j $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at nil) (:by nil) (:text |:states)
                      |j $ %{} :Expr (:at nil) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at nil) (:by nil) (:text |{})
                  |r $ %{} :Expr (:at nil) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518104654704) (:by |root) (:text |:drafts)
                      |j $ %{} :Expr (:at 1518105244272) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1518105245083) (:by |root) (:text |let)
                          |L $ %{} :Expr (:at 1518105245313) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1518105245439) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105247918) (:by |root) (:text |zero)
                                  |j $ %{} :Leaf (:at 1518105249786) (:by |root) (:text ||zero)
                          |T $ %{} :Expr (:at 1518104655678) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518104656031) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1518104740973) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105251224) (:by |root) (:text |zero)
                                  |j $ %{} :Expr (:at 1518104748134) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518104754130) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1518104757388) (:by |root) (:text |draft)
                                      |r $ %{} :Expr (:at 1518104777245) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518104778612) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1518104780876) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518104782992) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1518105252697) (:by |root) (:text |zero)
                                          |r $ %{} :Expr (:at 1518105235814) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518105237972) (:by |root) (:text |:touch-id)
                                              |j $ %{} :Leaf (:at 1518105254093) (:by |root) (:text |zero)
                  |v $ %{} :Expr (:at 1518105209366) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1518105211782) (:by |root) (:text |:pointer)
                      |j $ %{} :Leaf (:at 1518105222188) (:by |root) (:text ||zero)
                  |x $ %{} :Expr (:at 1520527884771) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520528293558) (:by |root) (:text |:version)
                      |j $ %{} :Leaf (:at 1520528590398) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at nil) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at nil) (:by nil) (:text |defn)
              |j $ %{} :Leaf (:at nil) (:by nil) (:text |updater)
              |r $ %{} :Expr (:at nil) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at nil) (:by nil) (:text |store)
                  |j $ %{} :Leaf (:at nil) (:by nil) (:text |op)
                  |v $ %{} :Leaf (:at 1518105885812) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1518190035346) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1518105740113) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518105742217) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1518105742509) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518105742644) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518105743813) (:by |root) (:text |pointer)
                          |j $ %{} :Expr (:at 1518105745301) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518105746299) (:by |root) (:text |:pointer)
                              |j $ %{} :Leaf (:at 1518106083685) (:by |root) (:text |store)
                  |T $ %{} :Expr (:at 1518105738238) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696787689030) (:by |rJG4IHzWf) (:text |tag-match)
                      |j $ %{} :Leaf (:at nil) (:by nil) (:text |op)
                      |r $ %{} :Expr (:at 1628935558868) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696787698261) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935558868) (:by |rJG4IHzWf) (:text |:states)
                              |b $ %{} :Leaf (:at 1696787699678) (:by |rJG4IHzWf) (:text |cursor)
                              |h $ %{} :Leaf (:at 1696787699909) (:by |rJG4IHzWf) (:text |s)
                          |j $ %{} :Expr (:at 1628935558868) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935558868) (:by |rJG4IHzWf) (:text |update-states)
                              |j $ %{} :Leaf (:at 1628935558868) (:by |rJG4IHzWf) (:text |store)
                              |r $ %{} :Leaf (:at 1696787703438) (:by |rJG4IHzWf) (:text |cursor)
                              |t $ %{} :Leaf (:at 1696787703768) (:by |rJG4IHzWf) (:text |s)
                      |v $ %{} :Expr (:at 1518105370116) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696787705463) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518105371448) (:by |root) (:text |:text)
                              |b $ %{} :Leaf (:at 1696787707805) (:by |rJG4IHzWf) (:text |op-data)
                          |j $ %{} :Expr (:at 1518105551620) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1518105552523) (:by |root) (:text |->)
                              |L $ %{} :Leaf (:at 1518105553237) (:by |root) (:text |store)
                              |T $ %{} :Expr (:at 1518105383592) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105385415) (:by |root) (:text |assoc-in)
                                  |r $ %{} :Expr (:at 1518105386476) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518105386657) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1518105390392) (:by |root) (:text |:drafts)
                                      |r $ %{} :Leaf (:at 1518105392825) (:by |root) (:text |pointer)
                                      |v $ %{} :Leaf (:at 1518105393649) (:by |root) (:text |:text)
                                  |v $ %{} :Leaf (:at 1518105757295) (:by |root) (:text |op-data)
                              |b $ %{} :Expr (:at 1518190362833) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518190367869) (:by |root) (:text |assoc-in)
                                  |j $ %{} :Expr (:at 1518190368374) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1518190368736) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1518190370097) (:by |root) (:text |:drafts)
                                      |r $ %{} :Leaf (:at 1518190371152) (:by |root) (:text |pointer)
                                      |v $ %{} :Leaf (:at 1518190375567) (:by |root) (:text |:touch-id)
                                  |r $ %{} :Leaf (:at 1518190384721) (:by |root) (:text |op-time)
                              |j $ %{} :Expr (:at 1518105555393) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518105567827) (:by |root) (:text |update)
                                  |j $ %{} :Leaf (:at 1518105569268) (:by |root) (:text |:drafts)
                                  |r $ %{} :Expr (:at 1518105569779) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1518105572915) (:by |root) (:text |fn)
                                      |T $ %{} :Expr (:at 1518105573378) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518105570969) (:by |root) (:text |drafts)
                                      |j $ %{} :Expr (:at 1518105574204) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1518105613996) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1518105614283) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1518105614420) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1518105805632) (:by |root) (:text |empty-drafts)
                                                  |j $ %{} :Expr (:at 1518105617962) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1628935894838) (:by |rJG4IHzWf) (:text |->)
                                                      |L $ %{} :Leaf (:at 1518105820002) (:by |root) (:text |drafts)
                                                      |P $ %{} :Expr (:at 1518106700606) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1628935942167) (:by |rJG4IHzWf) (:text |.to-list)
                                                      |R $ %{} :Expr (:at 1628935942844) (:by |rJG4IHzWf)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1628935944103) (:by |rJG4IHzWf) (:text |.map)
                                                          |j $ %{} :Leaf (:at 1628935944795) (:by |rJG4IHzWf) (:text |last)
                                                      |T $ %{} :Expr (:at 1518105821123) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518105809510) (:by |root) (:text |filter)
                                                          |j $ %{} :Expr (:at 1518105821870) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1518105822186) (:by |root) (:text |fn)
                                                              |j $ %{} :Expr (:at 1518105822479) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1518105830344) (:by |root) (:text |draft)
                                                              |r $ %{} :Expr (:at 1518105832163) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1628935571900) (:by |rJG4IHzWf) (:text |.blank?)
                                                                  |j $ %{} :Expr (:at 1518105838502) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1518105839345) (:by |root) (:text |:text)
                                                                      |j $ %{} :Leaf (:at 1518105840330) (:by |root) (:text |draft)
                                          |r $ %{} :Expr (:at 1518105854181) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1518105857116) (:by |root) (:text |cond)
                                              |j $ %{} :Expr (:at 1518105857406) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1518105859705) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518105860220) (:by |root) (:text |=)
                                                      |j $ %{} :Leaf (:at 1518105861652) (:by |root) (:text |1)
                                                      |r $ %{} :Expr (:at 1518105861991) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518105862851) (:by |root) (:text |count)
                                                          |j $ %{} :Leaf (:at 1518105865184) (:by |root) (:text |empty-drafts)
                                                  |j $ %{} :Leaf (:at 1518105869926) (:by |root) (:text |drafts)
                                              |n $ %{} :Expr (:at 1518106099443) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1518106099880) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1628935678843) (:by |rJG4IHzWf) (:text |empty?)
                                                      |j $ %{} :Leaf (:at 1518106110019) (:by |root) (:text |empty-drafts)
                                                  |j $ %{} :Expr (:at 1518106111904) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1518106114129) (:by |root) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1518106117379) (:by |root) (:text |drafts)
                                                      |r $ %{} :Leaf (:at 1518106120782) (:by |root) (:text |op-id)
                                                      |v $ %{} :Expr (:at 1518106121000) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1518106125857) (:by |root) (:text |merge)
                                                          |j $ %{} :Leaf (:at 1518106127586) (:by |root) (:text |schema/draft)
                                                          |r $ %{} :Expr (:at 1518106128132) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1518106128493) (:by |root) (:text |{})
                                                              |j $ %{} :Expr (:at 1518106128719) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1518106129473) (:by |root) (:text |:id)
                                                                  |j $ %{} :Leaf (:at 1518106130203) (:by |root) (:text |op-id)
                                                              |r $ %{} :Expr (:at 1518190397084) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1518190399117) (:by |root) (:text |:touch-id)
                                                                  |j $ %{} :Leaf (:at 1518190401825) (:by |root) (:text |op-time)
                                              |r $ %{} :Expr (:at 1518105870788) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1628935689706) (:by |rJG4IHzWf) (:text |true)
                                                  |j $ %{} :Expr (:at 1518106589349) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1518106591150) (:by |root) (:text |let)
                                                      |L $ %{} :Expr (:at 1518106591338) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1518106591504) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1518106593308) (:by |root) (:text |empty-ids)
                                                              |j $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |->)
                                                                  |j $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |map)
                                                                      |j $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |empty-drafts)
                                                                      |r $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |fn)
                                                                          |j $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |x)
                                                                          |r $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |:id)
                                                                              |j $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |x)
                                                                  |v $ %{} :Expr (:at 1628936706918) (:by |rJG4IHzWf)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1628936709324) (:by |rJG4IHzWf) (:text |filter)
                                                                      |T $ %{} :Expr (:at 1628936710324) (:by |rJG4IHzWf)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1628936710936) (:by |rJG4IHzWf) (:text |fn)
                                                                          |L $ %{} :Expr (:at 1628936712191) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1628936711857) (:by |rJG4IHzWf) (:text |x)
                                                                          |T $ %{} :Expr (:at 1628936609861) (:by |rJG4IHzWf)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1628936715169) (:by |rJG4IHzWf) (:text |not=)
                                                                              |b $ %{} :Leaf (:at 1628936715603) (:by |rJG4IHzWf) (:text |x)
                                                                              |j $ %{} :Leaf (:at 1628936609861) (:by |rJG4IHzWf) (:text |pointer)
                                                      |T $ %{} :Expr (:at 1518106623174) (:by |root)
                                                        :data $ {}
                                                          |L $ %{} :Leaf (:at 1518106629831) (:by |root) (:text |dissoc)
                                                          |T $ %{} :Leaf (:at 1518106590495) (:by |root) (:text |drafts)
                                                          |b $ %{} :Leaf (:at 1628936620265) (:by |rJG4IHzWf) (:text |&)
                                                          |j $ %{} :Leaf (:at 1518106632521) (:by |root) (:text |empty-ids)
                      |w $ %{} :Expr (:at 1518106306347) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696787709896) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518106307385) (:by |root) (:text |:pointer)
                              |b $ %{} :Leaf (:at 1696787711269) (:by |rJG4IHzWf) (:text |op-data)
                          |j $ %{} :Expr (:at 1518106307615) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518106309689) (:by |root) (:text |assoc)
                              |j $ %{} :Leaf (:at 1518106311731) (:by |root) (:text |store)
                              |r $ %{} :Leaf (:at 1518106312821) (:by |root) (:text |:pointer)
                              |v $ %{} :Leaf (:at 1518106449424) (:by |root) (:text |op-data)
                      |wT $ %{} :Expr (:at 1518110778392) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696787712896) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1518190079462) (:by |root) (:text |:hydrate-storage)
                              |b $ %{} :Leaf (:at 1696787714382) (:by |rJG4IHzWf) (:text |op-data)
                          |j $ %{} :Leaf (:at 1518110783093) (:by |root) (:text |op-data)
                      |wj $ %{} :Expr (:at 1520527894130) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1696787715453) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520527895808) (:by |root) (:text |:mono)
                          |j $ %{} :Expr (:at 1520527897748) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520845582253) (:by |root) (:text |update-in)
                              |j $ %{} :Leaf (:at 1520527904390) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1520845583714) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1520845584339) (:by |root) (:text |[])
                                  |L $ %{} :Leaf (:at 1520845586687) (:by |root) (:text |:drafts)
                                  |P $ %{} :Expr (:at 1520845587432) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520845588398) (:by |root) (:text |:pointer)
                                      |j $ %{} :Leaf (:at 1520845589476) (:by |root) (:text |store)
                                  |T $ %{} :Leaf (:at 1520528016935) (:by |root) (:text |:mono?)
                              |v $ %{} :Leaf (:at 1520527908321) (:by |root) (:text |not)
                      |x $ %{} :Expr (:at 1696787692771) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696787694039) (:by |rJG4IHzWf) (:text |_)
                          |b $ %{} :Expr (:at 1696787694436) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696787694436) (:by |rJG4IHzWf) (:text |do)
                              |b $ %{} :Expr (:at 1696787694436) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696787695977) (:by |rJG4IHzWf) (:text |eprintln)
                                  |b $ %{} :Leaf (:at 1696787694436) (:by |rJG4IHzWf) (:text "||Unknown op:")
                                  |h $ %{} :Leaf (:at 1696787694436) (:by |rJG4IHzWf) (:text |op)
                              |h $ %{} :Leaf (:at 1696787694436) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at nil) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at nil) (:by nil) (:text |ns)
            |j $ %{} :Leaf (:at nil) (:by nil) (:text |app.updater)
            |r $ %{} :Expr (:at nil) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at nil) (:by nil) (:text |:require)
                |j $ %{} :Expr (:at nil) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at nil) (:by nil) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at nil) (:by nil) (:text |:refer)
                    |v $ %{} :Expr (:at nil) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1628935562886) (:by |rJG4IHzWf) (:text |update-states)
                |v $ %{} :Expr (:at 1518106272026) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1518106274355) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1518106274760) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1518106275600) (:by |root) (:text |schema)
    |app.util $ %{} :FileEntry
      :defs $ {}
        |focus-text! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1518191446999) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518191446999) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1518191446999) (:by |root) (:text |focus-text!)
              |r $ %{} :Expr (:at 1518191446999) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1518191484903) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1518191490655) (:by |root) (:text |js/requestAnimationFrame)
                  |T $ %{} :Expr (:at 1518191492243) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1518191493794) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1518191494055) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1628935992734) (:by |rJG4IHzWf) (:text |t)
                      |T $ %{} :Expr (:at 1518191450628) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518191453487) (:by |root) (:text |let)
                          |j $ %{} :Expr (:at 1518191454873) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1518191456406) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1518191456103) (:by |root) (:text |element)
                                  |j $ %{} :Expr (:at 1518191457840) (:by |root)
                                    :data $ {}
                                      |j $ %{} :Leaf (:at 1628935997249) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                                      |r $ %{} :Leaf (:at 1518191476506) (:by |root) (:text ||.text)
                          |r $ %{} :Expr (:at 1518191477661) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628935994991) (:by |rJG4IHzWf) (:text |.!focus)
                              |j $ %{} :Leaf (:at 1518191483889) (:by |root) (:text |element)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1518191430931) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1518191430931) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1518191430931) (:by |root) (:text |app.util)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
