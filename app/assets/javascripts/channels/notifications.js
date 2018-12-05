App.notifications = App.cable.subscriptions.create("NotificationsChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    if (data.action == "messaged") {
      document.getElementById(data.id).classList.remove("hidden");
    } else {
      document.getElementById(data.id1).classList.remove("hidden");
      document.getElementById(data.id2).classList.remove("hidden");
    }
  }
});
