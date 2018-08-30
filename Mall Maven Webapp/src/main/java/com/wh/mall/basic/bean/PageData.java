package com.wh.mall.basic.bean;

import com.wh.mall.utils.Util;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
/**
 * @author ckf
 * @des 代替bean
 */
public class PageData extends HashMap implements Map{

    private static final long serialVersionUID = 1L;


    Map map = null;
    HttpServletRequest request;

    public PageData(HttpServletRequest request){
        this.request = request;
        Map properties = request.getParameterMap();
        Map returnMap = new HashMap();
        Iterator entries = properties.entrySet().iterator();
        Entry entry;
        String name = "";
        String value = "";
        while (entries.hasNext()) {
            entry = (Entry) entries.next();
            name = (String) entry.getKey();
            Object valueObj = entry.getValue();
            if(null == valueObj){
                value = "";
            }else if(valueObj instanceof String[]){
                String[] values = (String[])valueObj;
                for(int i=0;i<values.length;i++){
                    value = values[i] + ",";
                }
                value = value.substring(0, value.length()-1);
            }else{
                value = valueObj.toString();
            }
            returnMap.put(name, value);
        }
        map = returnMap;
    }

    public PageData() {
        map = new HashMap();
    }

    @Override
    public Object get(Object key) {
        Object obj = null;
        if(map.get(key) instanceof Object[]) {
            Object[] arr = (Object[])map.get(key);
            obj = request == null ? arr:(request.getParameter((String)key) == null ? arr:arr[0]);
        } else {
            if(Util.isInteger(String.valueOf(map.get(key)))){
                String str =  String.valueOf(map.get(key));
                if(StringUtils.isNotBlank(str)){
                    if(str.length()>10){
                        obj = map.get(key);
                    }else{
                        obj = Integer.valueOf(String.valueOf(map.get(key)));
                    }
                }
            }else{
                obj = map.get(key);
            }
        }
        return obj;
    }

    public void setId(Object id) {
        this.put("id",id);
    }

    public String getString(Object key) {
        return (String)get(key);
    }

    @SuppressWarnings("unchecked")
    @Override
    public Object put(Object key, Object value) {
        return map.put(key, value);
    }

    @Override
    public Object remove(Object key) {
        return map.remove(key);
    }

    public void clear() {
        map.clear();
    }

    public boolean containsKey(Object key) {
        // TODO Auto-generated method stub
        return map.containsKey(key);
    }

    public boolean containsValue(Object value) {
        // TODO Auto-generated method stub
        return map.containsValue(value);
    }

    public Set entrySet() {
        // TODO Auto-generated method stub
        return map.entrySet();
    }

    public boolean isEmpty() {
        // TODO Auto-generated method stub
        return map.isEmpty();
    }

    public Set keySet() {
        // TODO Auto-generated method stub
        return map.keySet();
    }

    @SuppressWarnings("unchecked")
    public void putAll(Map t) {
        // TODO Auto-generated method stub
        map.putAll(t);
    }

    public int size() {
        // TODO Auto-generated method stub
        return map.size();
    }

    public Collection values() {
        // TODO Auto-generated method stub
        return map.values();
    }

    public  static PageData formatJsonString(String data){
        PageData pd = new PageData();
        JSONObject jo = JSONObject.fromObject(data);
        Iterator<String> it = jo.keys();
        while(it.hasNext()){
            String key = it.next();
            if("index".equals(key)){
                int index = Integer.valueOf(String.valueOf(jo.get(key)))*10;
                pd.put(key,index);
            }else{
                pd.put(key,jo.get(key));
            }
        }
        return  pd;
    }

    public  static PageData mapToPageData(Map data){
        PageData pd = new PageData();
        Iterator<String> it = data.keySet().iterator();
        while(it.hasNext()){
            String key = it.next();
            if("index".equals(key)){
                int index = Integer.valueOf(String.valueOf(data.get(key)))*10;
                pd.put(key,index);
            }else{
                pd.put(key,data.get(key));
            }
        }
        return  pd;
    }

}
