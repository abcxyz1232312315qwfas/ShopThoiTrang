package com.buiminhduc.util.pool;

public interface ConnectionPool<T> {
    T create();
    void dead(T o);
    boolean validate(T o);
}
