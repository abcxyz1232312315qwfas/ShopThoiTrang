package com.buiminhduc.paging;

public interface Pageable {
    Integer getPage();
    Integer getLimit();
    Integer getOffset();

}
