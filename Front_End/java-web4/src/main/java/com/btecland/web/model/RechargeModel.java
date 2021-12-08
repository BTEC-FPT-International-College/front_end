package com.btecland.web.model;

public class RechargeModel {
	 private String rechargeid;
	    private String create_date;
	    private Integer amount;
	    private String name;
	    private String bank;
	    private String bank_account;
	    private String content;
	    private String walletid;
	    private String create_hour;
	    
	    public RechargeModel() {}
	
		public RechargeModel(String rechargeid, String create_date, Integer amount, String name, String bank,
				String bank_account, String content, String walletid, String create_hour) {
			super();
			this.rechargeid = rechargeid;
			this.create_date = create_date;
			this.amount = amount;
			this.name = name;
			this.bank = bank;
			this.bank_account = bank_account;
			this.content = content;
			this.walletid = walletid;
			this.create_hour = create_hour;
		}
		public String getRechargeid() {
			return rechargeid;
		}
		public void setRechargeid(String rechargeid) {
			this.rechargeid = rechargeid;
		}
		public String getCreate_date() {
			return create_date;
		}
		public void setCreate_date(String create_date) {
			this.create_date = create_date;
		}
		public Integer getAmount() {
			return amount;
		}
		public void setAmount(Integer amount) {
			this.amount = amount;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getBank() {
			return bank;
		}
		public void setBank(String bank) {
			this.bank = bank;
		}
		public String getBank_account() {
			return bank_account;
		}
		public void setBank_account(String bank_account) {
			this.bank_account = bank_account;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getWalletid() {
			return walletid;
		}
		public void setWalletid(String walletid) {
			this.walletid = walletid;
		}
		public String getCreate_hour() {
			return create_hour;
		}
		public void setCreate_hour(String create_hour) {
			this.create_hour = create_hour;
		}
	    
	   
	    
}
