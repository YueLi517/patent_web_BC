package beans;

public class user {
	private int xuhao1;
	private int id1;
	private int mima1;
	private String name1;
	private String sex1;
	private int age1;
	private String job1;
	/* private String job2; */
	

	public int getxuhao1() {
		return xuhao1;
	}
	public void setxuhao1(int xuhao1) {
		this.xuhao1 = xuhao1;
	}

//	public user() {
//		super();
//	}
	public int getid1() {
		return id1;
	}
	public void setid1(int id1) {
		this.id1 = id1;
	}
	public int getmima1() {
		return mima1;
	}
	public void setmima1(int mima1) {
		this.mima1 = mima1;
	}
	public String getname1() {
		return name1;
	}
	public void setname1(String name1) {
		this.name1 = name1;
	}
	public String getsex1() {
		return sex1;
	}
	public void setsex1(String sex1) {
		this.sex1 = sex1;
	}
	public int getage1() {
		return age1;
	}
	public void setage1(int age1) {
		this.age1 = age1;
	}
	public String getjob1() {
		return job1;
	}
	public void setjob1(String job1) {
		this.job1 = job1;
	}

	/*
	 * public String getjob2() { return job2; } public void setjob2(String job2) {
	 * this.job2 = job2; }
	 */
	public user(int xuhao1, int id1, int mima1, String name1, String sex1, int age1, String job1/* ,String job2 */) {
		super();
		this.xuhao1 = xuhao1;
		this.id1 = id1;
		this.mima1 = mima1;
		this.name1 = name1;
		this.sex1 = sex1;
		this.age1 = age1;
		this.job1 = job1;
		/* this.job2 = job2; */
	}


	
}
