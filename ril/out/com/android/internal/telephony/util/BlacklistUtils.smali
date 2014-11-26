.class public Lcom/android/internal/telephony/util/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field public static final BLOCK_CALLS:I = 0x1

.field public static final BLOCK_MESSAGES:I = 0x10

.field private static final DEBUG:Z = false

.field public static final MATCH_LIST:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_PRIVATE:I = 0x1

.field public static final MATCH_REGEX:I = 0x4

.field public static final MATCH_UNKNOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdate(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 12
    .parameter "context"
    .parameter "number"
    .parameter "flags"
    .parameter "valid"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 55
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v1, cv:Landroid/content/ContentValues;
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1a

    .line 58
    const-string v6, "phone"

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3d

    move v3, v4

    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    :cond_1a
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_2c

    .line 61
    const-string v6, "message"

    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_3f

    move v3, v4

    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    :cond_2c
    sget-object v3, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 65
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, count:I
    if-lez v0, :cond_41

    :goto_3c
    return v4

    .end local v0           #count:I
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3d
    move v3, v5

    .line 58
    goto :goto_13

    :cond_3f
    move v3, v5

    .line 61
    goto :goto_25

    .restart local v0       #count:I
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_41
    move v4, v5

    .line 67
    goto :goto_3c
.end method

.method public static isBlacklistEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isBlacklistNotifyEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_notify_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_private_number_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static isBlacklistRegexEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_regex_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public static isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_blacklist_unknown_number_enabled"

    const/4 v3, -0x3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static isListed(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 21
    .parameter "context"
    .parameter "number"
    .parameter "mode"

    .prologue
    .line 76
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 77
    const/4 v15, 0x0

    .line 152
    :cond_7
    :goto_7
    return v15

    .line 86
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_21

    .line 88
    const-string v16, "phone"

    .line 98
    .local v16, type:Ljava/lang/String;
    :goto_f
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 99
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 101
    const/4 v15, 0x1

    goto :goto_7

    .line 89
    .end local v16           #type:Ljava/lang/String;
    :cond_21
    const/16 v2, 0x10

    move/from16 v0, p2

    if-ne v0, v2, :cond_2a

    .line 91
    const-string v16, "message"

    .restart local v16       #type:Ljava/lang/String;
    goto :goto_f

    .line 93
    .end local v16           #type:Ljava/lang/String;
    :cond_2a
    const-string v2, "BlacklistUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v15, 0x0

    goto :goto_7

    .line 103
    .restart local v16       #type:Ljava/lang/String;
    :cond_46
    const/4 v15, 0x0

    goto :goto_7

    .line 106
    :cond_48
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 107
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 108
    .local v11, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-boolean v2, v11, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_5c

    .line 110
    const/4 v15, 0x2

    goto :goto_7

    .line 114
    .end local v11           #ci:Lcom/android/internal/telephony/CallerInfo;
    :cond_5c
    sget-object v2, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 115
    .local v9, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistRegexEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 117
    const-string v2, "regex"

    const-string v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :cond_74
    const/4 v15, 0x0

    .line 121
    .local v15, result:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "is_regex"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v16, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 124
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 126
    const-string v2, "is_regex"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 127
    .local v14, regexColumnIndex:I
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 128
    .local v13, modeColumnIndex:I
    const/16 v17, 0x0

    .line 130
    .local v17, whitelisted:Z
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 131
    :cond_a3
    :goto_a3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 132
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c8

    const/4 v12, 0x1

    .line 133
    .local v12, isRegex:Z
    :goto_b0
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_ca

    const/4 v8, 0x1

    .line 135
    .local v8, blocked:Z
    :goto_b7
    if-nez v12, :cond_cf

    .line 136
    if-nez v8, :cond_cc

    const/16 v17, 0x1

    .line 137
    :goto_bd
    const/4 v15, 0x3

    .line 138
    if-eqz v8, :cond_a3

    .line 145
    .end local v8           #blocked:Z
    .end local v12           #isRegex:Z
    :cond_c0
    if-eqz v17, :cond_c3

    .line 146
    const/4 v15, 0x0

    .line 148
    :cond_c3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 132
    :cond_c8
    const/4 v12, 0x0

    goto :goto_b0

    .line 133
    .restart local v12       #isRegex:Z
    :cond_ca
    const/4 v8, 0x0

    goto :goto_b7

    .line 136
    .restart local v8       #blocked:Z
    :cond_cc
    const/16 v17, 0x0

    goto :goto_bd

    .line 141
    :cond_cf
    if-eqz v8, :cond_a3

    .line 142
    const/4 v15, 0x4

    goto :goto_a3
.end method
