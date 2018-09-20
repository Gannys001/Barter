package model;

public class Chats{
	private int chatId;
	private String reqUserId;
	private int recUserId;

	public Chats (int chatId, String reqUserId, int recUserId ) {
		this.chatId =chatId;
		this.reqUserId = reqUserId;
		this.recUserId  = recUserId;	
		
	}

	public int getChatId() {
		return chatId;
	}

	public void setChatId(int chatId) {
		this.chatId = chatId;
	}

	public String getReqUserId() {
		return reqUserId;
	}

	public void setReqUserId(String reqUserId) {
		this.reqUserId = reqUserId;
	}

	public int getRecUserId() {
		return recUserId;
	}

	public void setRecUserId(int recUserId) {
		this.recUserId = recUserId;
	}
	
}
	

