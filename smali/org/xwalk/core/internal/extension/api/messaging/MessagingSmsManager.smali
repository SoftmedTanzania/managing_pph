.class public Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;
.super Ljava/lang/Object;
.source "MessagingSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$MessagingReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_SERVICE_ID:Ljava/lang/String; = "sim0"

.field private static final EXTRA_MSGID:Ljava/lang/String; = "asyncCallId"

.field private static final EXTRA_MSGINSTANCEID:Ljava/lang/String; = "instanceid"

.field private static final EXTRA_MSGTEXT:Ljava/lang/String; = "message"

.field private static final EXTRA_MSGTO:Ljava/lang/String; = "to"

.field private static final EXTRA_UUID:Ljava/lang/String; = "UUID"

.field private static final TAG:Ljava/lang/String; = "MessagingSmsManager"


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

.field private mSmsDeliveredReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsReceiveReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsSentReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mUUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messaging"    # Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 56
    iput-object p2, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mUUID:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mUUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->checkService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkService(Ljava/lang/String;)Z
    .locals 5
    .param p1, "serviceID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v3, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 62
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 65
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x5

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getServiceIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 369
    .local v0, "serviceIds":Lorg/json/JSONArray;
    const-string v1, "sim0"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 370
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onSmsClear(ILorg/json/JSONObject;)V
    .locals 15
    .param p1, "instanceID"    # I
    .param p2, "jsonMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 119
    iget-object v12, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 120
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v2, 0x0

    .local v2, "asyncCallId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 123
    .local v3, "cmd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 124
    .local v6, "eventBody":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 126
    .local v11, "serviceID":Ljava/lang/String;
    :try_start_0
    const-string v12, "asyncCallId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string v12, "cmd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string v12, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 129
    const-string v12, "serviceID"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 135
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    .local v4, "cr":Landroid/content/ContentResolver;
    const-string v12, "content://sms"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    const/4 v9, 0x0

    .line 140
    .local v9, "jsonMsgRet":Lorg/json/JSONObject;
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v9    # "jsonMsgRet":Lorg/json/JSONObject;
    .local v10, "jsonMsgRet":Lorg/json/JSONObject;
    :try_start_2
    const-string v12, "asyncCallId"

    invoke-virtual {v10, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v12, "cmd"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_ret"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v8, "jsData":Lorg/json/JSONObject;
    const-string v12, "data"

    invoke-virtual {v10, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v12, "error"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v7, "jsBody":Lorg/json/JSONObject;
    const-string v12, "body"

    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v12, "value"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    iget-object v12, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->postMessage(ILjava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "jsBody":Lorg/json/JSONObject;
    .end local v8    # "jsData":Lorg/json/JSONObject;
    .end local v10    # "jsonMsgRet":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "jsonMsgRet":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 150
    .restart local v5    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 149
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v9    # "jsonMsgRet":Lorg/json/JSONObject;
    .restart local v10    # "jsonMsgRet":Lorg/json/JSONObject;
    :catch_2
    move-exception v5

    move-object v9, v10

    .end local v10    # "jsonMsgRet":Lorg/json/JSONObject;
    .restart local v9    # "jsonMsgRet":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public onSmsSegmentInfo(ILorg/json/JSONObject;)V
    .locals 11
    .param p1, "instanceID"    # I
    .param p2, "jsonMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "asyncCallId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, "eventBody":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 162
    .local v8, "text":Ljava/lang/String;
    :try_start_0
    const-string v9, "asyncCallId"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v9, "data"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 164
    const-string v9, "text"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    if-nez v8, :cond_0

    .line 167
    const-string v9, "MessagingSmsManager"

    const-string v10, "No \"text\" attribute."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    .line 176
    .local v7, "sms":Landroid/telephony/SmsManager;
    invoke-virtual {v7, v8}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 178
    .local v6, "segs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v5, "jsonMsgRet":Lorg/json/JSONObject;
    const-string v9, "cmd"

    const-string v10, "msg_smsSegmentInfo_ret"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v9, "asyncCallId"

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v4, "jsData":Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v5, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v9, "error"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 184
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v3, "jsBody":Lorg/json/JSONObject;
    const-string v9, "body"

    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v9, "segments"

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v10, "charsPerSegment"

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v10, "charsAvailableInLastSegment"

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    iget-object v9, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Lorg/xwalk/core/internal/extension/api/messaging/Messaging;->postMessage(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    .end local v3    # "jsBody":Lorg/json/JSONObject;
    .end local v4    # "jsData":Lorg/json/JSONObject;
    .end local v5    # "jsonMsgRet":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 192
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSmsSend(ILorg/json/JSONObject;)V
    .locals 16
    .param p1, "instanceID"    # I
    .param p2, "jsonMsg"    # Lorg/json/JSONObject;

    .prologue
    .line 69
    const-string v3, "sim0"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->checkService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    const-string v3, "MessagingSmsManager"

    const-string v15, "No Sim Card"

    invoke-static {v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    .line 73
    .local v7, "activity":Landroid/app/Activity;
    if-nez v7, :cond_1

    .line 116
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v8, 0x0

    .line 76
    .local v8, "asyncCallId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 77
    .local v10, "eventBody":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 78
    .local v2, "phone":Ljava/lang/String;
    const/4 v4, 0x0

    .line 80
    .local v4, "smsMessage":Ljava/lang/String;
    :try_start_0
    const-string v3, "asyncCallId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    const-string v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 82
    const-string v3, "phone"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    const-string v3, "message"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 89
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 90
    .local v1, "sms":Landroid/telephony/SmsManager;
    new-instance v13, Landroid/content/Intent;

    const-string v3, "SMS_SENT"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v13, "intentSmsSent":Landroid/content/Intent;
    const-string v3, "asyncCallId"

    invoke-virtual {v13, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v3, "message"

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v3, "to"

    invoke-virtual {v13, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, "instanceIDString":Ljava/lang/String;
    const-string v3, "instanceid"

    invoke-virtual {v13, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v3, "UUID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mUUID:Ljava/lang/String;

    invoke-virtual {v13, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 98
    .local v14, "promiseIdInt":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v7, v14, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 102
    .local v5, "piSent":Landroid/app/PendingIntent;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "SMS_DELIVERED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v12, "intentSmsDelivered":Landroid/content/Intent;
    const-string v3, "asyncCallId"

    invoke-virtual {v12, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v3, "message"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v3, "instanceid"

    invoke-virtual {v12, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v3, "UUID"

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mUUID:Ljava/lang/String;

    invoke-virtual {v12, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    neg-int v3, v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v7, v3, v12, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 112
    .local v6, "piDelivered":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v9

    .line 114
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "MessagingSmsManager"

    const-string v15, "Failed to send SMS message."

    invoke-static {v3, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 84
    .end local v1    # "sms":Landroid/telephony/SmsManager;
    .end local v5    # "piSent":Landroid/app/PendingIntent;
    .end local v6    # "piDelivered":Landroid/app/PendingIntent;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "instanceIDString":Ljava/lang/String;
    .end local v12    # "intentSmsDelivered":Landroid/content/Intent;
    .end local v13    # "intentSmsSent":Landroid/content/Intent;
    .end local v14    # "promiseIdInt":I
    :catch_1
    move-exception v9

    .line 85
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public registerIntentFilters()V
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 199
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v1, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$1;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$1;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsReceiveReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v1, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$2;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    .line 291
    new-instance v1, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$3;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsDeliveredReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    new-instance v1, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$4;

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mMessagingHandler:Lorg/xwalk/core/internal/extension/api/messaging/Messaging;

    invoke-direct {v1, p0, v2}, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager$4;-><init>(Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;Lorg/xwalk/core/internal/extension/api/messaging/Messaging;)V

    iput-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsReceiveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsDeliveredReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SMS_DELIVERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsServiceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregisterIntentFilters()V
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 355
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsReceiveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 359
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsDeliveredReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/messaging/MessagingSmsManager;->mSmsServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
