package dao;

public class Student {
	  private String id;  
	    private String name;  
	    private int age;  
	    private String fm;  
	      
	    public Student(){         
	    }  
	      
	    public Student(String id,String name,int age, String fm){  
	        this.id = id;  
	        this.name = name;  
	        this.age = age;  
	        this.fm = fm;  
	    }  
	      
	    public void setId(String id){  
	        this.id = id;  
	    }  
	      
	    public String getId(){  
	        return this.id;  
	    }  
	  
	    public void setName(String name){  
	        this.name = name;  
	    }  
	      
	    public String getName(){  
	        return this.name;  
	    }  
	  
	    public void setAge(int age){  
	        this.age = age;  
	    }  
	      
	    public int getAge(){  
	        return age;  
	    }  
	      
	    public void setFm(String fm){  
	        this.fm = fm;  
	    }  
	      
	    public String getFm(){  
	        return this.fm;  
	    }     
	      
	    public void display(){  
	        System.out.println(id + " " + name + " " + age + " " + fm);  
	    }  
}
