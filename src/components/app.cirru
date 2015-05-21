
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
  :onEntryDoubleClick $ \ (note)
    this.onEntryClick note
    actions.touch $ note.get :id

  :renderEntries $ \ ()
    var notes $ this.props.notes.sort $ \ (a b)
      if (is (a.get :text) :) $ do
        return -1
      if (is (b.get :text) :) $ do
        return 1
      if (< (a.get :time) (b.get :time)) $ do
        return 1
      if (> (a.get :time) (b.get :time)) $ do
        return -1
      return 0

    = notes $ notes.map $ \\ (item index)
      var
        className $ cx :entry
          object
            :is-active (is (item.get :id) this.state.cursor)
        style $ object
          :top $ + 10 $ * 44 index
        content $ item.get :text
        firstLine $ . (content.split ":\n") 0
        onClick $ \\ ()
          this.onEntryClick item
        onDoubleClick $ \\ ()
          this.onEntryDoubleClick item

      var display $ cond
        > content.length 0
        or firstLine :/hidden/
        , :

      return $ div
        object (:className :entry)
          :key (item.get :id)
          :style style
          :onClick onClick
          :onDoubleClick onDoubleClick
        , display

    return $ notes.sortBy $ \ (note)
      return note.key

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
