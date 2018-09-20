package model;
import java.sql.Date;

public class Trade {
	
	private int tradeId;
	private int reqUserId;
	private int recUserId;
	private int reqItemId;
	private int recItemId;
	private Date date;
	private int status;
	private int chatId;
	
	public Trade(int tradeId, int reqUserId, int recUserId, int reqItemId, int recItemId, 
			Date date, int status,int chatId ) {
		this.tradeId = tradeId;
		this.reqUserId= reqUserId;
		this.recUserId = recUserId;
		this.reqItemId = reqItemId;
		this.recItemId = recItemId;
		this.date = date;
		this.status = status;
		this.chatId = chatId;
	}

	public int getTradeId() {
		return tradeId;
	}

	public void setTradeId(int tradeId) {
		this.tradeId = tradeId;
	}

	public int getReqUserId() {
		return reqUserId;
	}

	public void setReqUserId(int reqUserId) {
		this.reqUserId = reqUserId;
	}

	public int getRecUserId() {
		return recUserId;
	}

	public void setRecUserId(int recUserId) {
		this.recUserId = recUserId;
	}

	public int getReqItemId() {
		return reqItemId;
	}

	public void setReqItemId(int reqItemId) {
		this.reqItemId = reqItemId;
	}

	public int getRecItemId() {
		return recItemId;
	}

	public void setRecItemId(int recItemId) {
		this.recItemId = recItemId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getChatId() {
		return chatId;
	}

	public void setChatId(int chatId) {
		this.chatId = chatId;
	}

	

}
