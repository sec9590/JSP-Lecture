package json;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class JsonSimpleArray {

	public static void main(String[] args) {
		System.out.println("----------------------------------------------------");
		System.out.println("Json String 생성");
		JSONObject jObj = new JSONObject();
		
		JSONArray jArray = new JSONArray();
		jArray.add("국어");
		jArray.add("math");
		jArray.add("english");
		jObj.put("subject", jArray);
		
		System.out.println(jObj.toString());
		
		System.out.println("----------------------------------------------------");
		System.out.println("Json String 파싱");
		try {
			JSONArray rSub = (JSONArray) jObj.get("subject");
			System.out.println("SIZE = " + rSub.size());
			for(int i=0; i<rSub.size(); i++) {
				System.out.println("subject[" + i + "] = " + (String) rSub.get(i));				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("----------------------------------------------------");
	}

}
