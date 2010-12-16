table messages : { Message : string }

fun notifyMessage data =
  dml (INSERT INTO messages (Message) VALUES ({[data.Message]}));
  return <xml></xml>

fun dummyForm () =
  return <xml>
    <body>
      <form>
        <textbox{#Message}/>
        <submit action={notifyMessage}/>
      </form>
    </body>
  </xml>

fun listMessages () =
  rows <- queryX (SELECT * FROM messages)
          (fn row => <xml><tr><td>{[row.Messages.Message]}</td></tr></xml>);
  return <xml><table>{rows}</table></xml>

fun main () =
  rows <- listMessages ();
  return <xml><head>
    <title>Post Example</title>
  </head>

  <body>
    <p>Send a curl command like the following to add data
       to the messages table and refresh the page:</p>
    <p>curl -F "message=Hello" http://127.0.0.1:8080/notifyMessage</p>
    {rows}  
  </body>
</xml>
