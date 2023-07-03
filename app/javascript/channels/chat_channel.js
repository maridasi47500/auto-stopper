import consumer from "channels/consumer"

var chatroom= $("[data-chat-room]").data("chat-room");
consumer.subscriptions.create({ channel: "ChatChannel", room: chatroom }, {
	  received(data) {
		      this.appendLine(data)
		    },

	  appendLine(data) {
		      const html = this.createLine(data)
		      const element = document.querySelector("[data-chat-room='"+chatroom+"']")
		      element.insertAdjacentHTML("beforeend", html)
		    },

	  createLine(data) {
		      return `
		            <article class="chat-line">
			            <span class="speaker">${data["sent_by"]}</span>
				            <span class="body">${data["body"]}</span>
					          </article>
						      `
		    }
})
