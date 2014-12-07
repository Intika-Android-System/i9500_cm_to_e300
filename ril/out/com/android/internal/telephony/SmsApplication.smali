.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 3
    .parameter "packageManager"
    .parameter "componentName"

    .prologue
    .line 485
    const-string v0, "sms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 486
    const-string v0, "smsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 487
    const-string v0, "mms"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 488
    const-string v0, "mmsto"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private static getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 17
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 261
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 262
    .local v10, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v11

    if-nez v11, :cond_10

    .line 264
    const/4 v1, 0x0

    .line 365
    :cond_f
    :goto_f
    return-object v1

    .line 267
    :cond_10
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 270
    .local v2, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sms_default_application"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, defaultApplication:Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v3, :cond_25

    .line 275
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 279
    :cond_25
    if-eqz p1, :cond_50

    if-nez v1, :cond_50

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 282
    .local v9, r:Landroid/content/res/Resources;
    const v11, 0x1040116

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, defaultPackage:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 286
    if-nez v1, :cond_49

    .line 288
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    if-eqz v11, :cond_49

    .line 289
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v1, v11, v12

    .end local v1           #applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    check-cast v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 294
    .restart local v1       #applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_49
    if-eqz v1, :cond_50

    .line 295
    iget-object v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v11, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 300
    .end local v4           #defaultPackage:Ljava/lang/String;
    .end local v9           #r:Landroid/content/res/Resources;
    :cond_50
    if-eqz v1, :cond_f

    .line 301
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 307
    .local v0, appOps:Landroid/app/AppOpsManager;
    if-nez p1, :cond_64

    iget v11, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    if-ne v11, v12, :cond_9e

    .line 309
    :cond_64
    const/16 v11, 0xf

    iget v12, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 311
    .local v7, mode:I
    if-eqz v7, :cond_9e

    .line 312
    const-string v12, "SmsApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " lost OP_WRITE_SMS: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p1, :cond_10c

    const-string v11, " (fixing)"

    :goto_87
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz p1, :cond_110

    .line 315
    const/16 v11, 0xf

    iget v12, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 325
    .end local v7           #mode:I
    :cond_9e
    :goto_9e
    if-eqz p1, :cond_f

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 331
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v11}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 336
    :try_start_b0
    const-string v11, "com.android.phone"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 337
    .local v6, info:Landroid/content/pm/PackageInfo;
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.phone"

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 339
    .restart local v7       #mode:I
    if-eqz v7, :cond_d8

    .line 340
    const-string v11, "SmsApplication"

    const-string v12, "com.android.phone lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.phone"

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_d8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b0 .. :try_end_d8} :catch_112

    .line 351
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #mode:I
    :cond_d8
    :goto_d8
    :try_start_d8
    const-string v11, "com.android.bluetooth"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 352
    .restart local v6       #info:Landroid/content/pm/PackageInfo;
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.bluetooth"

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    .line 354
    .restart local v7       #mode:I
    if-eqz v7, :cond_f

    .line 355
    const-string v11, "SmsApplication"

    const-string v12, "com.android.bluetooth lost OP_WRITE_SMS:  (fixing)"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v11, 0xf

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v13, "com.android.bluetooth"

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_100
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_100} :catch_102

    goto/16 :goto_f

    .line 359
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #mode:I
    :catch_102
    move-exception v5

    .line 361
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SmsApplication"

    const-string v12, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 312
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .restart local v7       #mode:I
    :cond_10c
    const-string v11, " (no permission to fix)"

    goto/16 :goto_87

    .line 319
    :cond_110
    const/4 v1, 0x0

    goto :goto_9e

    .line 344
    .end local v7           #mode:I
    .restart local v8       #packageManager:Landroid/content/pm/PackageManager;
    :catch_112
    move-exception v5

    .line 346
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SmsApplication"

    const-string v12, "Phone package not found: com.android.phone"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    goto :goto_d8
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .registers 19
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 138
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v14, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 141
    .local v13, smsReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v7, receivers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 145
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 146
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_19

    .line 149
    const-string v14, "android.permission.BROADCAST_SMS"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 152
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 153
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 154
    invoke-virtual {v8, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, applicationName:Ljava/lang/String;
    new-instance v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v1, v6, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    .local v12, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    .line 158
    invoke-virtual {v7, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 163
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_54
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    const-string v15, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, mmsReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 167
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 168
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_6a

    .line 171
    const-string v14, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6a

    .line 174
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 175
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 176
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_6a

    .line 177
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    goto :goto_6a

    .line 182
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_93
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 185
    .local v9, respondServices:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ad
    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 186
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 187
    .local v11, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-eqz v11, :cond_ad

    .line 190
    const-string v14, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v15, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ad

    .line 193
    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 194
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 195
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_ad

    .line 196
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    goto :goto_ad

    .line 201
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v11           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_d6
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.SENDTO"

    const-string v15, "smsto"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v3, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .restart local v3       #intent:Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v5, v3, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 204
    .local v10, sendToActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f0
    :goto_f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 205
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 206
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_f0

    .line 209
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 210
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 211
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_f0

    .line 212
    iget-object v14, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v14, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    goto :goto_f0

    .line 217
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_10f
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_113
    :goto_113
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_137

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 218
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 219
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_113

    .line 222
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 223
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 224
    .restart local v12       #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v12, :cond_113

    .line 225
    invoke-virtual {v12}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v14

    if-nez v14, :cond_113

    .line 226
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_113

    .line 230
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_137
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    return-object v14
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 6
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    .prologue
    .local p0, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    const/4 v2, 0x0

    .line 239
    if-nez p1, :cond_5

    move-object v0, v2

    .line 248
    :goto_4
    return-object v0

    .line 243
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 244
    .local v0, application:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    .end local v0           #application:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_1e
    move-object v0, v2

    .line 248
    goto :goto_4
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 6
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 553
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_10

    .line 554
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_10
    return-object v0
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 6
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 570
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_10

    .line 571
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_10
    return-object v0
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 6
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 587
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_10

    .line 588
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_10
    return-object v0
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .registers 6
    .parameter "context"
    .parameter "updateIfNeeded"

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;Z)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 537
    .local v1, smsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_10

    .line 538
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    iget-object v2, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .restart local v0       #component:Landroid/content/ComponentName;
    :cond_10
    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .registers 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 524
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    .line 525
    .local v0, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 478
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .line 479
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 480
    return-void
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 13
    .parameter "packageManager"
    .parameter "componentName"
    .parameter "scheme"

    .prologue
    .line 497
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {p2, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 498
    .local v2, intent:Landroid/content/Intent;
    const v7, 0x10040

    invoke-virtual {p0, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 502
    .local v5, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 503
    .local v4, n:I
    new-array v6, v4, [Landroid/content/ComponentName;

    .line 504
    .local v6, set:[Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v4, :cond_36

    .line 505
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 506
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v0

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 510
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_36
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 511
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 514
    const v7, 0x208000

    invoke-virtual {p0, v3, v7, v6, p1}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 517
    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .registers 15
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/16 v12, 0xf

    const/4 v11, 0x0

    .line 373
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 374
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v8

    if-nez v8, :cond_12

    .line 438
    :cond_11
    :goto_11
    return-void

    .line 380
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sms_default_application"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, oldPackageName:Ljava/lang/String;
    if-eqz p0, :cond_26

    if-eqz v5, :cond_26

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 389
    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 390
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    .line 391
    .local v2, applications:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    .line 392
    .local v1, applicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-eqz v1, :cond_11

    .line 394
    const-string v8, "appops"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 395
    .local v0, appOps:Landroid/app/AppOpsManager;
    if-eqz v5, :cond_4e

    .line 397
    const/16 v8, 0x2000

    :try_start_40
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 399
    .local v4, info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0xf

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v9, v5, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40 .. :try_end_4e} :catch_9e

    .line 407
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :cond_4e
    :goto_4e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sms_default_application"

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 411
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 415
    iget v8, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v12, v8, v9, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 420
    :try_start_6c
    const-string v8, "com.android.phone"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 421
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0xf

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v10, "com.android.phone"

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6c .. :try_end_7f} :catch_b8

    .line 430
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :goto_7f
    :try_start_7f
    const-string v8, "com.android.bluetooth"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 431
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    const/16 v8, 0xf

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v10, "com.android.bluetooth"

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_92} :catch_94

    goto/16 :goto_11

    .line 433
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :catch_94
    move-exception v3

    .line 435
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SmsApplication"

    const-string v9, "Bluetooth package not found: com.android.bluetooth"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 401
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_9e
    move-exception v3

    .line 402
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SmsApplication"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Old SMS package not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 423
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_b8
    move-exception v3

    .line 425
    .restart local v3       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SmsApplication"

    const-string v9, "Phone package not found: com.android.phone"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 598
    if-nez p0, :cond_5

    .line 619
    :cond_4
    :goto_4
    return v3

    .line 600
    :cond_5
    const/4 v1, 0x0

    .line 601
    .local v1, defaultSmsPackage:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 602
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_10

    .line 603
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 606
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 609
    .local v2, ignorePackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v3, v4

    .line 610
    goto :goto_4

    .line 613
    :cond_27
    if-eqz v1, :cond_2f

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    :cond_2f
    const-string v5, "com.android.bluetooth"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_37
    move v3, v4

    .line 619
    goto :goto_4
.end method
