package model;


public class Messages{
	private int msgId;
	private String msgText;
	private int chatId;

	public Messages  (int msgId, String msgText, int chatId ) {
		this.msgId = msgId;
		this.msgText = msgText;
		this.chatId  = chatId ;
		
	}

	public int getMsgId() {
		return msgId;
	}

	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}

	public String getMsgText() {
		return msgText;
	}

	public void setMsgText(String msgText) {
		this.msgText = msgText;
	}

	public int getChatId() {
		return chatId;
	}

	public void setChatId(int chatId) {
		this.chatId = chatId;
	}
	
}
