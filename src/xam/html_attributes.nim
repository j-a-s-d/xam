# xam
# ===
# HTML ATTRIBUTES CONSTANTS

# GLOBAL ATTRIBUTES

const
  HTML_ATTRIBUTES_ACCESSKEY* = "accesskey" # Global Attributes | Specifies a shortcut key to activate/focus an element
  HTML_ATTRIBUTES_CLASS* = "class" # Global Attributes | Specifies one or more classnames for an element (refers to a class in a style sheet)
  HTML_ATTRIBUTES_CONTENTEDITABLE* = "contenteditable" # Global Attributes | Specifies whether the content of an element is editable or not
  HTML_ATTRIBUTES_DIR* = "dir" # Global Attributes | Specifies the text direction for the content in an element
  HTML_ATTRIBUTES_DRAGGABLE* = "draggable" # Global Attributes | Specifies whether an element is draggable or not
  HTML_ATTRIBUTES_HIDDEN* = "hidden" # Global Attributes | Specifies that an element is not yet, or is no longer, relevant
  HTML_ATTRIBUTES_ID* = "id" # Global Attributes | Specifies a unique id for an element
  HTML_ATTRIBUTES_LANG* = "lang" # Global Attributes | Specifies the language of the element's content
  HTML_ATTRIBUTES_SPELLCHECK* = "spellcheck" # Global Attributes | Specifies whether the element is to have its spelling and grammar checked or not
  HTML_ATTRIBUTES_STYLE* = "style" # Global Attributes | Specifies an inline CSS style for an element
  HTML_ATTRIBUTES_TABINDEX* = "tabindex" # Global Attributes | Specifies the tabbing order of an element
  HTML_ATTRIBUTES_TITLE* = "title" # Global Attributes | Specifies extra information about an element
  HTML_ATTRIBUTES_TRANSLATE* = "translate" # Global Attributes | Specifies whether the content of an element should be translated or not

# ALL VISIBLE ELEMENTS ATTRIBUTES

const
  HTML_ATTRIBUTES_ONBLUR* = "onblur" # All visible elements. | Script to be run when the element loses focus
  HTML_ATTRIBUTES_ONCHANGE* = "onchange" # All visible elements. | Script to be run when the value of the element is changed
  HTML_ATTRIBUTES_ONCLICK* = "onclick" # All visible elements. | Script to be run when the element is being clicked
  HTML_ATTRIBUTES_ONCONTEXTMENU* = "oncontextmenu" # All visible elements. | Script to be run when a context menu is triggered
  HTML_ATTRIBUTES_ONCOPY* = "oncopy" # All visible elements. | Script to be run when the content of the element is being copied
  HTML_ATTRIBUTES_ONCUT* = "oncut" # All visible elements. | Script to be run when the content of the element is being cut
  HTML_ATTRIBUTES_ONDBLCLICK* = "ondblclick" # All visible elements. | Script to be run when the element is being double-clicked
  HTML_ATTRIBUTES_ONDRAG* = "ondrag" # All visible elements. | Script to be run when the element is being dragged
  HTML_ATTRIBUTES_ONDRAGEND* = "ondragend" # All visible elements. | Script to be run at the end of a drag operation
  HTML_ATTRIBUTES_ONDRAGENTER* = "ondragenter" # All visible elements. | Script to be run when an element has been dragged to a valid drop target
  HTML_ATTRIBUTES_ONDRAGLEAVE* = "ondragleave" # All visible elements. | Script to be run when an element leaves a valid drop target
  HTML_ATTRIBUTES_ONDRAGOVER* = "ondragover" # All visible elements. | Script to be run when an element is being dragged over a valid drop target
  HTML_ATTRIBUTES_ONDRAGSTART* = "ondragstart" # All visible elements. | Script to be run at the start of a drag operation
  HTML_ATTRIBUTES_ONDROP* = "ondrop" # All visible elements. | Script to be run when dragged element is being dropped
  HTML_ATTRIBUTES_ONFOCUS* = "onfocus" # All visible elements. | Script to be run when the element gets focus
  HTML_ATTRIBUTES_ONINPUT* = "oninput" # All visible elements. | Script to be run when the element gets user input
  HTML_ATTRIBUTES_ONINVALID* = "oninvalid" # All visible elements. | Script to be run when the element is invalid
  HTML_ATTRIBUTES_ONKEYDOWN* = "onkeydown" # All visible elements. | Script to be run when a user is pressing a key
  HTML_ATTRIBUTES_ONKEYPRESS* = "onkeypress" # All visible elements. | Script to be run when a user presses a key
  HTML_ATTRIBUTES_ONKEYUP* = "onkeyup" # All visible elements. | Script to be run when a user releases a key
  HTML_ATTRIBUTES_ONMOUSEDOWN* = "onmousedown" # All visible elements. | Script to be run when a mouse button is pressed down on an element
  HTML_ATTRIBUTES_ONMOUSEMOVE* = "onmousemove" # All visible elements. | Script to be run as long as the  mouse pointer is moving over an element
  HTML_ATTRIBUTES_ONMOUSEOUT* = "onmouseout" # All visible elements. | Script to be run when a mouse pointer moves out of an element
  HTML_ATTRIBUTES_ONMOUSEOVER* = "onmouseover" # All visible elements. | Script to be run when a mouse pointer moves over an element
  HTML_ATTRIBUTES_ONMOUSEUP* = "onmouseup" # All visible elements. | Script to be run when a mouse button is released over an element
  HTML_ATTRIBUTES_ONMOUSEWHEEL* = "onmousewheel" # All visible elements. | Script to be run when a mouse wheel is being scrolled over an element
  HTML_ATTRIBUTES_ONPASTE* = "onpaste" # All visible elements. | Script to be run when the user pastes some content in an element
  HTML_ATTRIBUTES_ONSCROLL* = "onscroll" # All visible elements. | Script to be run when an element's scrollbar is being scrolled
  HTML_ATTRIBUTES_ONSELECT* = "onselect" # All visible elements. | Script to be run when the element gets selected
  HTML_ATTRIBUTES_ONWHEEL* = "onwheel" # All visible elements. | Script to be run when the mouse wheel rolls up or down over an element

# TAG SPECIFIC ATTRIBUTES

const
  HTML_ATTRIBUTES_ACCEPT* = "accept" # <input> | Specifies the types of files that the server accepts (only for type="file")
  HTML_ATTRIBUTES_ACCEPT_CHARSET* = "accept-charset" # <form> | Specifies the character encodings that are to be used for the form submission
  HTML_ATTRIBUTES_ACTION* = "action" # <form> | Specifies where to send the form-data when a form is submitted
  HTML_ATTRIBUTES_ALT* = "alt" # <area>, <img>, <input> | Specifies an alternate text when the original element fails to display
  HTML_ATTRIBUTES_ASYNC* = "async" # <script> | Specifies that the script is executed asynchronously (only for external scripts)
  HTML_ATTRIBUTES_AUTOCOMPLETE* = "autocomplete" # <form>, <input> | Specifies whether the <form> or the <input> element should have autocomplete enabled
  HTML_ATTRIBUTES_AUTOFOCUS* = "autofocus" # <button>, <input>, <select>, <textarea> | Specifies that the element should automatically get focus when the page loads
  HTML_ATTRIBUTES_AUTOPLAY* = "autoplay" # <audio>, <video> | Specifies that the audio/video will start playing as soon as it is ready
  HTML_ATTRIBUTES_CHARSET* = "charset" # <meta>, <script> | Specifies the character encoding
  HTML_ATTRIBUTES_CHECKED* = "checked" # <input> | Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio")
  HTML_ATTRIBUTES_CITE* = "cite" # <blockquote>, <del>, <ins>, <q> | Specifies a URL which explains the quote/deleted/inserted text
  HTML_ATTRIBUTES_COLS* = "cols" # <textarea> | Specifies the visible width of a text area
  HTML_ATTRIBUTES_COLSPAN* = "colspan" # <td>, <th> | Specifies the number of columns a table cell should span
  HTML_ATTRIBUTES_CONTENT* = "content" # <meta> | Gives the value associated with the http-equiv or name attribute
  HTML_ATTRIBUTES_CONTROLS* = "controls" # <audio>, <video> | Specifies that audio/video controls should be displayed (such as a play/pause button etc)
  HTML_ATTRIBUTES_COORDS* = "coords" # <area> | Specifies the coordinates of the area
  HTML_ATTRIBUTES_DATA* = "data" # <object> | Specifies the URL of the resource to be used by the object
  HTML_ATTRIBUTES_DATETIME* = "datetime" # <del>, <ins>, <time> | Specifies the date and time
  HTML_ATTRIBUTES_DEFAULT* = "default" # <track> | Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
  HTML_ATTRIBUTES_DEFER* = "defer" # <script> | Specifies that the script is executed when the page has finished parsing (only for external scripts)
  HTML_ATTRIBUTES_DIRNAME* = "dirname" # <input>, <textarea> | Specifies that the text direction will be submitted
  HTML_ATTRIBUTES_DISABLED* = "disabled" # <button>, <fieldset>, <input>, <optgroup>, <option>, <select>, <textarea> | Specifies that the specified element/group of elements should be disabled
  HTML_ATTRIBUTES_DOWNLOAD* = "download" # <a>, <area> | Specifies that the target will be downloaded when a user clicks on the hyperlink
  HTML_ATTRIBUTES_ENCTYPE* = "enctype" # <form> | Specifies how the form-data should be encoded when submitting it to the server (only for method="post")
  HTML_ATTRIBUTES_FOR* = "for" # <label>, <output> | Specifies which form element(s) a label/calculation is bound to
  HTML_ATTRIBUTES_FORM* = "form" # <button>, <fieldset>, <input>, <label>, <meter>, <object>, <output>, <select>, <textarea> | Specifies the name of the form the element belongs to
  HTML_ATTRIBUTES_FORMACTION* = "formaction" # <button>, <input> | Specifies where to send the form-data when a form is submitted. Only for type="submit"
  HTML_ATTRIBUTES_HEADERS* = "headers" # <td>, <th> | Specifies one or more headers cells a cell is related to
  HTML_ATTRIBUTES_HEIGHT* = "height" # <canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video> | Specifies the height of the element
  HTML_ATTRIBUTES_HIGH* = "high" # <meter> | Specifies the range that is considered to be a high value
  HTML_ATTRIBUTES_HREF* = "href" # <a>, <area>, <base>, <link> | Specifies the URL of the page the link goes to
  HTML_ATTRIBUTES_HREFLANG* = "hreflang" # <a>, <area>, <link> | Specifies the language of the linked document
  HTML_ATTRIBUTES_HTTP_EQUIV* = "http-equiv" # <meta> | Provides an HTTP header for the information/value of the content attribute
  HTML_ATTRIBUTES_ISMAP* = "ismap" # <img> | Specifies an image as a server-side image map
  HTML_ATTRIBUTES_KIND* = "kind" # <track> | Specifies the kind of text track
  HTML_ATTRIBUTES_LABEL* = "label" # <track>, <option>, <optgroup> | Specifies the title of the text track
  HTML_ATTRIBUTES_LIST* = "list" # <input> | Refers to a <datalist> element that contains pre-defined options for an <input> element
  HTML_ATTRIBUTES_LOOP* = "loop" # <audio>, <video> | Specifies that the audio/video will start over again, every time it is finished
  HTML_ATTRIBUTES_LOW* = "low" # <meter> | Specifies the range that is considered to be a low value
  HTML_ATTRIBUTES_MAX* = "max" # <input>, <meter>, <progress> | Specifies the maximum value
  HTML_ATTRIBUTES_MAXLENGTH* = "maxlength" # <input>, <textarea> | Specifies the maximum number of characters allowed in an element
  HTML_ATTRIBUTES_MEDIA* = "media" # <a>, <area>, <link>, <source>, <style> | Specifies what media/device the linked document is optimized for
  HTML_ATTRIBUTES_METHOD* = "method" # <form> | Specifies the HTTP method to use when sending form-data
  HTML_ATTRIBUTES_MIN* = "min" # <input>, <meter> | Specifies a minimum value
  HTML_ATTRIBUTES_MULTIPLE* = "multiple" # <input>, <select> | Specifies that a user can enter more than one value
  HTML_ATTRIBUTES_MUTED* = "muted" # <video>, <audio> | Specifies that the audio output of the video should be muted
  HTML_ATTRIBUTES_NAME* = "name" # <button>, <fieldset>, <form>, <iframe>, <input>, <map>, <meta>, <object>, <output>, <param>, <select>, <textarea> | Specifies the name of the element
  HTML_ATTRIBUTES_NOVALIDATE* = "novalidate" # <form> | Specifies that the form should not be validated when submitted
  HTML_ATTRIBUTES_ONABORT* = "onabort" # <audio>, <embed>, <img>, <object>, <video> | Script to be run on abort
  HTML_ATTRIBUTES_ONAFTERPRINT* = "onafterprint" # <body> | Script to be run after the document is printed
  HTML_ATTRIBUTES_ONBEFOREPRINT* = "onbeforeprint" # <body> | Script to be run before the document is printed
  HTML_ATTRIBUTES_ONBEFOREUNLOAD* = "onbeforeunload" # <body> | Script to be run when the document is about to be unloaded
  HTML_ATTRIBUTES_ONCANPLAY* = "oncanplay" # <audio>, <embed>, <object>, <video> | Script to be run when a file is ready to start playing (when it has buffered enough to begin)
  HTML_ATTRIBUTES_ONCANPLAYTHROUGH* = "oncanplaythrough" # <audio>, <video> | Script to be run when a file can be played all the way to the end without pausing for buffering
  HTML_ATTRIBUTES_ONCUECHANGE* = "oncuechange" # <track> | Script to be run when the cue changes in a <track> element
  HTML_ATTRIBUTES_ONDURATIONCHANGE* = "ondurationchange" # <audio>, <video> | Script to be run when the length of the media changes
  HTML_ATTRIBUTES_ONEMPTIED* = "onemptied" # <audio>, <video> | Script to be run when something bad happens and the file is suddenly unavailable (like unexpectedly disconnects)
  HTML_ATTRIBUTES_ONENDED* = "onended" # <audio>, <video> | Script to be run when the media has reach the end (a useful event for messages like "thanks for listening")
  HTML_ATTRIBUTES_ONERROR* = "onerror" # <audio>, <body>, <embed>, <img>, <object>, <script>, <style>, <video> | Script to be run when an error occurs
  HTML_ATTRIBUTES_ONHASHCHANGE* = "onhashchange" # <body> | Script to be run when there has been changes to the anchor part of the a URL
  HTML_ATTRIBUTES_ONLOAD* = "onload" # <body>, <iframe>, <img>, <input>, <link>, <script>, <style> | Script to be run when the element is finished loading
  HTML_ATTRIBUTES_ONLOADEDDATA* = "onloadeddata" # <audio>, <video> | Script to be run when media data is loaded
  HTML_ATTRIBUTES_ONLOADEDMETADATA* = "onloadedmetadata" # <audio>, <video> | Script to be run when meta data (like dimensions and duration) are loaded
  HTML_ATTRIBUTES_ONLOADSTART* = "onloadstart" # <audio>, <video> | Script to be run just as the file begins to load before anything is actually loaded
  HTML_ATTRIBUTES_ONOFFLINE* = "onoffline" # <body> | Script to be run when the browser starts to work offline
  HTML_ATTRIBUTES_ONONLINE* = "ononline" # <body> | Script to be run when the browser starts to work online
  HTML_ATTRIBUTES_ONPAGEHIDE* = "onpagehide" # <body> | Script to be run when a user navigates away from a page
  HTML_ATTRIBUTES_ONPAGESHOW* = "onpageshow" # <body> | Script to be run when a user navigates to a page
  HTML_ATTRIBUTES_ONPAUSE* = "onpause" # <audio>, <video> | Script to be run when the media is paused either by the user or programmatically
  HTML_ATTRIBUTES_ONPLAY* = "onplay" # <audio>, <video> | Script to be run when the media has started playing
  HTML_ATTRIBUTES_ONPLAYING* = "onplaying" # <audio>, <video> | Script to be run when the media has started playing
  HTML_ATTRIBUTES_ONPOPSTATE* = "onpopstate" # <body> | Script to be run when the window's history changes.
  HTML_ATTRIBUTES_ONPROGRESS* = "onprogress" # <audio>, <video> | Script to be run when the browser is in the process of getting the media data
  HTML_ATTRIBUTES_ONRATECHANGE* = "onratechange" # <audio>, <video> | Script to be run each time the playback rate changes (like when a user switches to a slow motion or fast forward mode).
  HTML_ATTRIBUTES_ONRESET* = "onreset" # <form> | Script to be run when a reset button in a form is clicked.
  HTML_ATTRIBUTES_ONRESIZE* = "onresize" # <body> | Script to be run when the browser window is being resized.
  HTML_ATTRIBUTES_ONSEARCH* = "onsearch" # <input> | Script to be run when the user writes something in a search field (for <input="search">)
  HTML_ATTRIBUTES_ONSEEKED* = "onseeked" # <audio>, <video> | Script to be run when the seeking attribute is set to false indicating that seeking has ended
  HTML_ATTRIBUTES_ONSEEKING* = "onseeking" # <audio>, <video> | Script to be run when the seeking attribute is set to true indicating that seeking is active
  HTML_ATTRIBUTES_ONSTALLED* = "onstalled" # <audio>, <video> | Script to be run when the browser is unable to fetch the media data for whatever reason
  HTML_ATTRIBUTES_ONSTORAGE* = "onstorage" # <body> | Script to be run when a Web Storage area is updated
  HTML_ATTRIBUTES_ONSUBMIT* = "onsubmit" # <form> | Script to be run when a form is submitted
  HTML_ATTRIBUTES_ONSUSPEND* = "onsuspend" # <audio>, <video> | Script to be run when fetching the media data is stopped before it is completely loaded for whatever reason
  HTML_ATTRIBUTES_ONTIMEUPDATE* = "ontimeupdate" # <audio>, <video> | Script to be run when the playing position has changed (like when the user fast forwards to a different point in the media)
  HTML_ATTRIBUTES_ONTOGGLE* = "ontoggle" # <details> | Script to be run when the user opens or closes the <details> element
  HTML_ATTRIBUTES_ONUNLOAD* = "onunload" # <body> | Script to be run when a page has unloaded (or the browser window has been closed)
  HTML_ATTRIBUTES_ONVOLUMECHANGE* = "onvolumechange" # <audio>, <video> | Script to be run each time the volume of a video/audio has been changed
  HTML_ATTRIBUTES_ONWAITING* = "onwaiting" # <audio>, <video> | Script to be run when the media has paused but is expected to resume (like when the media pauses to buffer more data)
  HTML_ATTRIBUTES_OPEN* = "open" # <details> | Specifies that the details should be visible (open) to the user
  HTML_ATTRIBUTES_OPTIMUM* = "optimum" # <meter> | Specifies what value is the optimal value for the gauge
  HTML_ATTRIBUTES_PATTERN* = "pattern" # <input> | Specifies a regular expression that an <input> element's value is checked against
  HTML_ATTRIBUTES_PLACEHOLDER* = "placeholder" # <input>, <textarea> | Specifies a short hint that describes the expected value of the element
  HTML_ATTRIBUTES_POSTER* = "poster" # <video> | Specifies an image to be shown while the video is downloading, or until the user hits the play button
  HTML_ATTRIBUTES_PRELOAD* = "preload" # <audio>, <video> | Specifies if and how the author thinks the audio/video should be loaded when the page loads
  HTML_ATTRIBUTES_READONLY* = "readonly" # <input>, <textarea> | Specifies that the element is read-only
  HTML_ATTRIBUTES_REL* = "rel" # <a>, <area>, <form>, <link> | Specifies the relationship between the current document and the linked document
  HTML_ATTRIBUTES_REQUIRED* = "required" # <input>, <select>, <textarea> | Specifies that the element must be filled out before submitting the form
  HTML_ATTRIBUTES_REVERSED* = "reversed" # <ol> | Specifies that the list order should be descending (9,8,7...)
  HTML_ATTRIBUTES_ROWS* = "rows" # <textarea> | Specifies the visible number of lines in a text area
  HTML_ATTRIBUTES_ROWSPAN* = "rowspan" # <td>, <th> | Specifies the number of rows a table cell should span
  HTML_ATTRIBUTES_SANDBOX* = "sandbox" # <iframe> | Enables an extra set of restrictions for the content in an <iframe>
  HTML_ATTRIBUTES_SCOPE* = "scope" # <th> | Specifies whether a header cell is a header for a column, row, or group of columns or rows
  HTML_ATTRIBUTES_SELECTED* = "selected" # <option> | Specifies that an option should be pre-selected when the page loads
  HTML_ATTRIBUTES_SHAPE* = "shape" # <area> | Specifies the shape of the area
  HTML_ATTRIBUTES_SIZE* = "size" # <input>, <select> | Specifies the width, in characters (for <input>) or specifies the number of visible options (for <select>)
  HTML_ATTRIBUTES_SIZES* = "sizes" # <img>, <link>, <source> | Specifies the size of the linked resource
  HTML_ATTRIBUTES_SPAN* = "span" # <col>, <colgroup> | Specifies the number of columns to span
  HTML_ATTRIBUTES_SRC* = "src" # <audio>, <embed>, <iframe>, <img>, <input>, <script>, <source>, <track>, <video> | Specifies the URL of the media file
  HTML_ATTRIBUTES_SRCDOC* = "srcdoc" # <iframe> | Specifies the HTML content of the page to show in the <iframe>
  HTML_ATTRIBUTES_SRCLANG* = "srclang" # <track> | Specifies the language of the track text data (required if kind="subtitles")
  HTML_ATTRIBUTES_SRCSET* = "srcset" # <img>, <source> | Specifies the URL of the image to use in different situations
  HTML_ATTRIBUTES_START* = "start" # <ol> | Specifies the start value of an ordered list
  HTML_ATTRIBUTES_STEP* = "step" # <input> | Specifies the legal number intervals for an input field
  HTML_ATTRIBUTES_TARGET* = "target" # <a>, <area>, <base>, <form> | Specifies the target for where to open the linked document or where to submit the form
  HTML_ATTRIBUTES_TYPE* = "type" # <a>, <button>, <embed>, <input>, <link>, <menu>, <object>, <script>, <source>, <style> | Specifies the type of element
  HTML_ATTRIBUTES_USEMAP* = "usemap" # <img>, <object> | Specifies an image as a client-side image map
  HTML_ATTRIBUTES_VALUE* = "value" # <button>, <input>, <li>, <option>, <meter>, <progress>, <param> | Specifies the value of the element
  HTML_ATTRIBUTES_WIDTH* = "width" # <canvas>, <embed>, <iframe>, <img>, <input>, <object>, <video> | Specifies the width of the element
  HTML_ATTRIBUTES_WRAP* = "wrap" # <textarea> | Specifies how the text in a text area is to be wrapped when submitted in a form

# NOT SUPPORTED IN HTML 5 ATTRIBUTES

const
  HTML_ATTRIBUTES_ALIGN* = "align" # Not supported in HTML 5. | Specifies the alignment according to surrounding elements. Use CSS instead
  HTML_ATTRIBUTES_BGCOLOR* = "bgcolor" # Not supported in HTML 5. | Specifies the background color of an element. Use CSS instead
  HTML_ATTRIBUTES_BORDER* = "border" # Not supported in HTML 5. | Specifies the width of the border of an element. Use CSS instead
  HTML_ATTRIBUTES_COLOR* = "color" # Not supported in HTML 5. | Specifies the text color of an element. Use CSS instead

const
  HTML_ATTRIBUTES*: tuple = (
    ACCESSKEY: HTML_ATTRIBUTES_ACCESSKEY,
    CLASS: HTML_ATTRIBUTES_CLASS,
    CONTENTEDITABLE: HTML_ATTRIBUTES_CONTENTEDITABLE,
    DIR: HTML_ATTRIBUTES_DIR,
    DRAGGABLE: HTML_ATTRIBUTES_DRAGGABLE,
    HIDDEN: HTML_ATTRIBUTES_HIDDEN,
    ID: HTML_ATTRIBUTES_ID,
    LANG: HTML_ATTRIBUTES_LANG,
    SPELLCHECK: HTML_ATTRIBUTES_SPELLCHECK,
    STYLE: HTML_ATTRIBUTES_STYLE,
    TABINDEX: HTML_ATTRIBUTES_TABINDEX,
    TITLE: HTML_ATTRIBUTES_TITLE,
    TRANSLATE: HTML_ATTRIBUTES_TRANSLATE,
    ONBLUR: HTML_ATTRIBUTES_ONBLUR,
    ONCHANGE: HTML_ATTRIBUTES_ONCHANGE,
    ONCLICK: HTML_ATTRIBUTES_ONCLICK,
    ONCONTEXTMENU: HTML_ATTRIBUTES_ONCONTEXTMENU,
    ONCOPY: HTML_ATTRIBUTES_ONCOPY,
    ONCUT: HTML_ATTRIBUTES_ONCUT,
    ONDBLCLICK: HTML_ATTRIBUTES_ONDBLCLICK,
    ONDRAG: HTML_ATTRIBUTES_ONDRAG,
    ONDRAGEND: HTML_ATTRIBUTES_ONDRAGEND,
    ONDRAGENTER: HTML_ATTRIBUTES_ONDRAGENTER,
    ONDRAGLEAVE: HTML_ATTRIBUTES_ONDRAGLEAVE,
    ONDRAGOVER: HTML_ATTRIBUTES_ONDRAGOVER,
    ONDRAGSTART: HTML_ATTRIBUTES_ONDRAGSTART,
    ONDROP: HTML_ATTRIBUTES_ONDROP,
    ONFOCUS: HTML_ATTRIBUTES_ONFOCUS,
    ONINPUT: HTML_ATTRIBUTES_ONINPUT,
    ONINVALID: HTML_ATTRIBUTES_ONINVALID,
    ONKEYDOWN: HTML_ATTRIBUTES_ONKEYDOWN,
    ONKEYPRESS: HTML_ATTRIBUTES_ONKEYPRESS,
    ONKEYUP: HTML_ATTRIBUTES_ONKEYUP,
    ONMOUSEDOWN: HTML_ATTRIBUTES_ONMOUSEDOWN,
    ONMOUSEMOVE: HTML_ATTRIBUTES_ONMOUSEMOVE,
    ONMOUSEOUT: HTML_ATTRIBUTES_ONMOUSEOUT,
    ONMOUSEOVER: HTML_ATTRIBUTES_ONMOUSEOVER,
    ONMOUSEUP: HTML_ATTRIBUTES_ONMOUSEUP,
    ONMOUSEWHEEL: HTML_ATTRIBUTES_ONMOUSEWHEEL,
    ONPASTE: HTML_ATTRIBUTES_ONPASTE,
    ONSCROLL: HTML_ATTRIBUTES_ONSCROLL,
    ONSELECT: HTML_ATTRIBUTES_ONSELECT,
    ONWHEEL: HTML_ATTRIBUTES_ONWHEEL,
    ACCEPT: HTML_ATTRIBUTES_ACCEPT,
    ACCEPT_CHARSET: HTML_ATTRIBUTES_ACCEPT_CHARSET,
    ACTION: HTML_ATTRIBUTES_ACTION,
    ALT: HTML_ATTRIBUTES_ALT,
    ASYNC: HTML_ATTRIBUTES_ASYNC,
    AUTOCOMPLETE: HTML_ATTRIBUTES_AUTOCOMPLETE,
    AUTOFOCUS: HTML_ATTRIBUTES_AUTOFOCUS,
    AUTOPLAY: HTML_ATTRIBUTES_AUTOPLAY,
    CHARSET: HTML_ATTRIBUTES_CHARSET,
    CHECKED: HTML_ATTRIBUTES_CHECKED,
    CITE: HTML_ATTRIBUTES_CITE,
    COLS: HTML_ATTRIBUTES_COLS,
    COLSPAN: HTML_ATTRIBUTES_COLSPAN,
    CONTENT: HTML_ATTRIBUTES_CONTENT,
    CONTROLS: HTML_ATTRIBUTES_CONTROLS,
    COORDS: HTML_ATTRIBUTES_COORDS,
    DATA: HTML_ATTRIBUTES_DATA,
    DATETIME: HTML_ATTRIBUTES_DATETIME,
    DEFAULT: HTML_ATTRIBUTES_DEFAULT,
    DEFER: HTML_ATTRIBUTES_DEFER,
    DIRNAME: HTML_ATTRIBUTES_DIRNAME,
    DISABLED: HTML_ATTRIBUTES_DISABLED,
    DOWNLOAD: HTML_ATTRIBUTES_DOWNLOAD,
    ENCTYPE: HTML_ATTRIBUTES_ENCTYPE,
    FOR: HTML_ATTRIBUTES_FOR,
    FORM: HTML_ATTRIBUTES_FORM,
    FORMACTION: HTML_ATTRIBUTES_FORMACTION,
    HEADERS: HTML_ATTRIBUTES_HEADERS,
    HEIGHT: HTML_ATTRIBUTES_HEIGHT,
    HIGH: HTML_ATTRIBUTES_HIGH,
    HREF: HTML_ATTRIBUTES_HREF,
    HREFLANG: HTML_ATTRIBUTES_HREFLANG,
    HTTP_EQUIV: HTML_ATTRIBUTES_HTTP_EQUIV,
    ISMAP: HTML_ATTRIBUTES_ISMAP,
    KIND: HTML_ATTRIBUTES_KIND,
    LABEL: HTML_ATTRIBUTES_LABEL,
    LIST: HTML_ATTRIBUTES_LIST,
    LOOP: HTML_ATTRIBUTES_LOOP,
    LOW: HTML_ATTRIBUTES_LOW,
    MAX: HTML_ATTRIBUTES_MAX,
    MAXLENGTH: HTML_ATTRIBUTES_MAXLENGTH,
    MEDIA: HTML_ATTRIBUTES_MEDIA,
    METHOD: HTML_ATTRIBUTES_METHOD,
    MIN: HTML_ATTRIBUTES_MIN,
    MULTIPLE: HTML_ATTRIBUTES_MULTIPLE,
    MUTED: HTML_ATTRIBUTES_MUTED,
    NAME: HTML_ATTRIBUTES_NAME,
    NOVALIDATE: HTML_ATTRIBUTES_NOVALIDATE,
    ONABORT: HTML_ATTRIBUTES_ONABORT,
    ONAFTERPRINT: HTML_ATTRIBUTES_ONAFTERPRINT,
    ONBEFOREPRINT: HTML_ATTRIBUTES_ONBEFOREPRINT,
    ONBEFOREUNLOAD: HTML_ATTRIBUTES_ONBEFOREUNLOAD,
    ONCANPLAY: HTML_ATTRIBUTES_ONCANPLAY,
    ONCANPLAYTHROUGH: HTML_ATTRIBUTES_ONCANPLAYTHROUGH,
    ONCUECHANGE: HTML_ATTRIBUTES_ONCUECHANGE,
    ONDURATIONCHANGE: HTML_ATTRIBUTES_ONDURATIONCHANGE,
    ONEMPTIED: HTML_ATTRIBUTES_ONEMPTIED,
    ONENDED: HTML_ATTRIBUTES_ONENDED,
    ONERROR: HTML_ATTRIBUTES_ONERROR,
    ONHASHCHANGE: HTML_ATTRIBUTES_ONHASHCHANGE,
    ONLOAD: HTML_ATTRIBUTES_ONLOAD,
    ONLOADEDDATA: HTML_ATTRIBUTES_ONLOADEDDATA,
    ONLOADEDMETADATA: HTML_ATTRIBUTES_ONLOADEDMETADATA,
    ONLOADSTART: HTML_ATTRIBUTES_ONLOADSTART,
    ONOFFLINE: HTML_ATTRIBUTES_ONOFFLINE,
    ONONLINE: HTML_ATTRIBUTES_ONONLINE,
    ONPAGEHIDE: HTML_ATTRIBUTES_ONPAGEHIDE,
    ONPAGESHOW: HTML_ATTRIBUTES_ONPAGESHOW,
    ONPAUSE: HTML_ATTRIBUTES_ONPAUSE,
    ONPLAY: HTML_ATTRIBUTES_ONPLAY,
    ONPLAYING: HTML_ATTRIBUTES_ONPLAYING,
    ONPOPSTATE: HTML_ATTRIBUTES_ONPOPSTATE,
    ONPROGRESS: HTML_ATTRIBUTES_ONPROGRESS,
    ONRATECHANGE: HTML_ATTRIBUTES_ONRATECHANGE,
    ONRESET: HTML_ATTRIBUTES_ONRESET,
    ONRESIZE: HTML_ATTRIBUTES_ONRESIZE,
    ONSEARCH: HTML_ATTRIBUTES_ONSEARCH,
    ONSEEKED: HTML_ATTRIBUTES_ONSEEKED,
    ONSEEKING: HTML_ATTRIBUTES_ONSEEKING,
    ONSTALLED: HTML_ATTRIBUTES_ONSTALLED,
    ONSTORAGE: HTML_ATTRIBUTES_ONSTORAGE,
    ONSUBMIT: HTML_ATTRIBUTES_ONSUBMIT,
    ONSUSPEND: HTML_ATTRIBUTES_ONSUSPEND,
    ONTIMEUPDATE: HTML_ATTRIBUTES_ONTIMEUPDATE,
    ONTOGGLE: HTML_ATTRIBUTES_ONTOGGLE,
    ONUNLOAD: HTML_ATTRIBUTES_ONUNLOAD,
    ONVOLUMECHANGE: HTML_ATTRIBUTES_ONVOLUMECHANGE,
    ONWAITING: HTML_ATTRIBUTES_ONWAITING,
    OPEN: HTML_ATTRIBUTES_OPEN,
    OPTIMUM: HTML_ATTRIBUTES_OPTIMUM,
    PATTERN: HTML_ATTRIBUTES_PATTERN,
    PLACEHOLDER: HTML_ATTRIBUTES_PLACEHOLDER,
    POSTER: HTML_ATTRIBUTES_POSTER,
    PRELOAD: HTML_ATTRIBUTES_PRELOAD,
    READONLY: HTML_ATTRIBUTES_READONLY,
    REL: HTML_ATTRIBUTES_REL,
    REQUIRED: HTML_ATTRIBUTES_REQUIRED,
    REVERSED: HTML_ATTRIBUTES_REVERSED,
    ROWS: HTML_ATTRIBUTES_ROWS,
    ROWSPAN: HTML_ATTRIBUTES_ROWSPAN,
    SANDBOX: HTML_ATTRIBUTES_SANDBOX,
    SCOPE: HTML_ATTRIBUTES_SCOPE,
    SELECTED: HTML_ATTRIBUTES_SELECTED,
    SHAPE: HTML_ATTRIBUTES_SHAPE,
    SIZE: HTML_ATTRIBUTES_SIZE,
    SIZES: HTML_ATTRIBUTES_SIZES,
    SPAN: HTML_ATTRIBUTES_SPAN,
    SRC: HTML_ATTRIBUTES_SRC,
    SRCDOC: HTML_ATTRIBUTES_SRCDOC,
    SRCLANG: HTML_ATTRIBUTES_SRCLANG,
    SRCSET: HTML_ATTRIBUTES_SRCSET,
    START: HTML_ATTRIBUTES_START,
    STEP: HTML_ATTRIBUTES_STEP,
    TARGET: HTML_ATTRIBUTES_TARGET,
    TYPE: HTML_ATTRIBUTES_TYPE,
    USEMAP: HTML_ATTRIBUTES_USEMAP,
    VALUE: HTML_ATTRIBUTES_VALUE,
    WIDTH: HTML_ATTRIBUTES_WIDTH,
    WRAP: HTML_ATTRIBUTES_WRAP,
    ALIGN: HTML_ATTRIBUTES_ALIGN,
    BGCOLOR: HTML_ATTRIBUTES_BGCOLOR,
    BORDER: HTML_ATTRIBUTES_BORDER,
    COLOR: HTML_ATTRIBUTES_COLOR
  )
