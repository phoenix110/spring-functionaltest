<div id="wrapper">
  <p>
    Date:<span id="getDateResult"> <fmt:formatDate pattern="HH:mm:ss" value="${resultDate}" /></span><br />
    Class:<span id="getDateClassResult">${f:h(resultDate.getClass().getName())}</span>
  </p>
</div>