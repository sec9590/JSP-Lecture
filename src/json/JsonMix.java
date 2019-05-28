package json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JsonMix {

	public static void main(String[] args) {
		System.out.println("----------------------------------------------------");
		System.out.println("Json String 생성");
		JSONObject jObj = new JSONObject();
		jObj.put("name", "홍길동"); //String name = "홍길동";
		jObj.put("age", 40);
		
		JSONArray jArray = new JSONArray();
		JSONObject school = new JSONObject();
		school.put("subject", "math");
		jArray.add(school);
		
		school = new JSONObject(); //객체생성을 새로 안하면 덮어씌어짐
		school.put("subject", "국어");
		jArray.add(school);
		jObj.put("school", jArray);
		
		System.out.println(jObj.toString());
		
		System.out.println("----------------------------------------------------");
		System.out.println("Json String 파싱");
		try {
			JSONArray returnSchool = (JSONArray) jObj.get("school");
			System.out.println("SIZE = " + returnSchool.size());
			for(int i=0; i<returnSchool.size(); i++) {
				JSONObject returnSubject = (JSONObject) returnSchool.get(i);
				System.out.println("subject[" + i + "] = " + (String) returnSubject.get("subject"));				
			}
			int age = (Integer) jObj.get("age");
			String name = (String) jObj.get("name");
			System.out.println("name = " + name);
			System.out.println("age = " + age);
		} catch(Exception e) {
			e.printStackTrace();
		}	
		System.out.println("----------------------------------------------------");
	}

}
