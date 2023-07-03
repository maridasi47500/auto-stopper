class NewCommentJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @msg=args[0]
    ActionCable.server.broadcast(
      "chat_#{@msg.room.name}",
          {
            sent_by: @msg.user.myfirstname,
            body: @msg.content
          }
    )
  end
end
