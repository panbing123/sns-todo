package com.tangcheng.zhiban.sns.todo.manager.biz;
/**
 * Created by tangcheng on 8/31/2017.
 */
public interface UserManager {
    Long save(String openId, byte type, String nickname, String icon);
}
