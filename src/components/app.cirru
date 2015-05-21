
var
  React $ require :react
  actions $ require :../actions
  cx $ require :classnames

var div $ React.createFactory :div
var textarea $ React.createFactory :textarea

var T React.PropTypes

= module.exports $ React.createClass $ object
  :displayName :app

  :propTypes $ object
    :notes T.object.isRequired

  :componentDidMount $ \ ()
    this.focusAtText

  :getInitialState $ \ ()
    var emptyNote $ this.getEmptyNote
    return $ object
      :cursor $ emptyNote.get :id

  :getEmptyNote $ \ ()
    return $ this.props.notes.find $ \ (note)
      return $ is (note.get :text) :

  :focusAtText $ \ ()
    var textEl $ this.refs.text.getDOMNode
    setTimeout
      \\ ()
        textEl.focus

  :onChange $ \ (event selected)
    actions.update (selected.get :id) event.target.value

  :onEntryClick $ \ (note)
    this.setState
      object
        :cursor $ note.get :id
      \\ ()
        this.focusAtText

  :renderEntries $ \ ()
    return $ this.props.notes.map $ \\ (item index)
      var
        className $ cx :entry
          object
            :is-active (is (item.get :id) this.state.cursor)
        style $ object
          :top $ * 40 index
        onClick $ \\ ()
          this.onEntryClick item
      return $ div
        object (:className :entry)
          :key (item.get :id)
          :style style
          :onClick onClick
        item.get :text

  :render $ \ ()
    var selected $ this.props.notes.find $ \\ (note)
      return $ is (note.get :id) this.state.cursor
    if (not $ ? selected) $ do
      = selected $ this.getEmptyNote

    var onChange $ \\ (event)
      this.onChange event selected

    return $ div
      object (:className :app-root)
      div
        object (:className :sidebar)
        this.renderEntries
      textarea
        object (:className :text)
          :ref :text
          :onChange onChange
          :value $ selected.get :text
          :autofocus true
