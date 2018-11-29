function scrollLastMessageIntoView() {
  messages = document.querySelectorAll('.message');
  lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}
