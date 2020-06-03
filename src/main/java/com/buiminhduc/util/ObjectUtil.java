package com.buiminhduc.util;

import com.buiminhduc.common.annotation.Id;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class ObjectUtil {

    public static Object getMethod(Object object, Field field) {
        String fieldName = field.getName();
        fieldName = fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);

        String getMethodName = "get" + fieldName;

        Method method = null;
        try {
            method = object.getClass().getMethod(getMethodName);
            return method.invoke(object);
        } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException  e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void setMethod(Object object, Field field, Object fieldData){
        field.setAccessible(true);
        try {
            field.set(object, fieldData);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    public static Field getFieldByName(Class clazz, String fieldName) throws NoSuchFieldException {
        return clazz.getDeclaredField(fieldName);
    }

    public static void copyProperties(Object source, Object destination) {
        Field[] fields = source.getClass().getDeclaredFields();
        Field[] fieldsDestination = destination.getClass().getDeclaredFields();

        for (int i = 0; i < fields.length; i++) {
            for (int j = 0; j < fieldsDestination.length; j++) {
                if (fields[i].getName().equals(fieldsDestination[j].getName())) {
                    Object fieldData = getMethod(source, fields[i]);
                    setMethod(destination, fieldsDestination[j], fieldData);
                }
            }
        }
    }

    public static Object map(Class<?> tClass, ResultSet resultSet) throws IllegalAccessException, InstantiationException, NoSuchFieldException, SQLException {
        Field[] fields = tClass.getDeclaredFields();
        Object object = tClass.newInstance();

        for (int i = 0; i < fields.length; i++) {
            if (fields[i].isAnnotationPresent(Id.class)) {
                setMethod(object, fields[i], resultSet.getObject(AnnotationUtil.getPrimarykey(tClass, fields[i].getName())));
            } else {
                if (fields[i].getType().getName().equals("java.time.LocalDate")) {
                    setMethod(object, fields[i], resultSet.getDate(AnnotationUtil.getFields(tClass, fields[i].getName())).toLocalDate());
                    continue;
                } else {
                    setMethod(object, fields[i], resultSet.getObject(AnnotationUtil.getFields(tClass, fields[i].getName())));
                }
            }
        }
        return object;
    }
    public static Map<String , Object> convertToMap(Object object) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Map<String , Object> filter = new HashMap<>();
        Field[] fields = object.getClass().getDeclaredFields();
        for (Field field : fields){
            if (getMethod(object, field) != null)
            filter.put(field.getName() , getMethod(object, field));
        }
        return filter;
    }
    public static String convertListToString(int id){
        String list=null;
        ResultSet resultSet = null;
        try {
            resultSet = new MySqlConnectionUtil().chonDuLieuTuDTB("select ten, SUM(GIOHANG.soLuongMua) from  GIOHANG, sanpham where GIOHANG.maSp= SanPham.maSp and GIOHANG.id_user = "+id+" group by GIOHANG.maSp;");
            while (resultSet.next()){
                list = list+"~"+resultSet.getString(1)+"&"+resultSet.getString(2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static List<String> convertStringToList(String a){
        List<String> resultName = new ArrayList();
        String[] list = a.split("~");
        for (String temp : list) {
            if (!temp.equals("null")) {
                String result = temp.replace("&","x");
                resultName.add(result);
            }
        }
        return resultName;
    }
}
