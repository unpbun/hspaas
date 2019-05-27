package com.huashi.mms.record.service;

import java.util.List;
import java.util.concurrent.Future;

import com.alibaba.fastjson.JSONObject;
import com.huashi.mms.record.domain.MmsMtMessageDeliver;
import com.huashi.mms.record.domain.MmsMtMessagePush;
import com.huashi.mms.record.domain.MmsMtMessageSubmit;

/**
 * TODO 彩信推送服务
 * 
 * @author zhengying
 * @version V1.0
 * @date 2019年1月15日 上午11:13:38
 */
public interface IMmsMtPushService {

    /**
     * TODO 保存推送记录
     * 
     * @param list
     */
    void savePushMessage(List<MmsMtMessagePush> pushes);

    /**
     * TODO 监听所有用户信息
     * 
     * @return
     */
    boolean doListenerAllUser();

    /**
     * TODO 根据用户ID获取用户待推送队列名称
     * 
     * @param userId
     * @return
     */
    String getUserPushQueueName(Integer userId);

    /**
     * TODO 设置消息ID组装待推送数据配置信息（异步）
     * 
     * @param submits
     * @return
     */
    void setMessageReadyPushConfigurations(List<MmsMtMessageSubmit> submits);

    /**
     * TODO 比对回执报文数据并且发送报文至下家（异步）
     * 
     * @param delivers
     * @return
     */
    Future<Boolean> compareAndPushBody(List<MmsMtMessageDeliver> delivers);

    /**
     * TODO 推送下行短信回执报告至开发者（下家客户）
     * 
     * @param bodies 组装的推送报文数据
     */
    void pushMessageBodyToDeveloper(List<JSONObject> bodies);

    /**
     * TODO 获取待推送数据报告（如 SID,用户自定义内容）
     * 
     * @param msgId 消息ID
     * @param mobile 手机号码
     * @return
     */
    JSONObject getWaitPushBodyArgs(String msgId, String mobile);

    /**
     * TODO 添加用户推送队列监听（添加用户后需要添加监听）
     * 
     * @param userId
     * @return
     */
    boolean addUserMtPushListener(Integer userId);

    /**
     * TODO 获取下行短信待推送消息 KEY
     * 
     * @param msgId
     * @return
     */
    String getMtPushConfigKey(String msgId);
    
    /**
     * 
       * 开启针对状态回执过快/插入submit慢的数据进行重试（防止丢数据）
       * @return
     */
    boolean startFailoverListener();

}
