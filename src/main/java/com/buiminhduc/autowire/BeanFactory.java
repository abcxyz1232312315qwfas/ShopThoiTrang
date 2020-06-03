package com.buiminhduc.autowire;


import com.buiminhduc.common.annotation.Component;
import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.common.annotation.Service;
import org.reflections.Reflections;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class BeanFactory {
    public static Map<String, Object> beans;

    static {
        synchronized (BeanFactory.class) {
            beans = new HashMap<>();
            createBean();
        }
    }

    public static synchronized void createBean() {
        Reflections reflection = new Reflections("com.buiminhduc");
        Set<? extends Class> classes = reflection.getTypesAnnotatedWith(Component.class);

        classes.forEach(s -> {
            try {
                if (!s.getTypeName().equals(Service.class.getTypeName()) && !s.getTypeName().equals(Repository.class.getTypeName())) {
                    String name = s.getSimpleName().substring(0, 1).toLowerCase() + s.getSimpleName().substring(1, s.getSimpleName().lastIndexOf("Impl"));
                    beans.put(name, s.newInstance());
                }
            } catch(InstantiationException | IllegalAccessException e){
                    e.printStackTrace();
            }
        });
    }

    public static Map<String, Object> getBeans() {
        return beans;
    }

    public static void main(String[] args) {
        for (Map.Entry entry : beans.entrySet()){
            System.out.println("key: "+entry.getKey()+" value: "+entry.getValue());
        }
    }

}

