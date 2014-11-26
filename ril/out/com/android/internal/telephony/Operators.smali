.class public Lcom/android/internal/telephony/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field private static stored:Ljava/lang/String;

.field private static storedOperators:Ljava/lang/String;


# instance fields
.field private unOptOperators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/android/internal/telephony/Operators;->stored:Ljava/lang/String;

    .line 86
    sput-object v0, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Operators;->unOptOperators:Ljava/util/Map;

    return-void
.end method

.method private initList()Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v2, init:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/selective-spn-conf.xml"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v6, spnFile:Ljava/io/File;
    :try_start_10
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_15} :catch_31

    .line 59
    .local v7, spnReader:Ljava/io/FileReader;
    :try_start_15
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 60
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 62
    const-string v8, "spnOverrides"

    invoke-static {v5, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 65
    :goto_21
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, name:Ljava/lang/String;
    const-string v8, "spnOverride"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_2d} :catch_67
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2d} :catch_81

    move-result v8

    if-nez v8, :cond_55

    .line 82
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #spnReader:Ljava/io/FileReader;
    :goto_30
    return-object v2

    .line 52
    :catch_31
    move-exception v1

    .line 53
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v8, "Operatorcheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/etc/selective-spn-conf.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 72
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7       #spnReader:Ljava/io/FileReader;
    :cond_55
    const/4 v8, 0x0

    :try_start_56
    const-string v9, "numeric"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, numeric:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "spn"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, data:Ljava/lang/String;
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_66
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_66} :catch_81

    goto :goto_21

    .line 77
    .end local v0           #data:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_67
    move-exception v1

    .line 78
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "Operatorcheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in spn-conf parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 79
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_81
    move-exception v1

    .line 80
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Operatorcheck"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in spn-conf parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static operatorReplace(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "response"

    .prologue
    .line 92
    if-eqz p0, :cond_10

    const/4 v3, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_11

    .line 117
    .end local p0
    :cond_10
    :goto_10
    return-object p0

    .line 99
    .restart local p0
    :cond_11
    sget-object v3, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    if-eqz v3, :cond_24

    sget-object v3, Lcom/android/internal/telephony/Operators;->stored:Ljava/lang/String;

    if-eqz v3, :cond_24

    sget-object v3, Lcom/android/internal/telephony/Operators;->stored:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 100
    sget-object p0, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    goto :goto_10

    .line 102
    :cond_24
    sput-object p0, Lcom/android/internal/telephony/Operators;->stored:Ljava/lang/String;

    .line 106
    :try_start_26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_43

    .line 114
    new-instance v1, Lcom/android/internal/telephony/Operators;

    invoke-direct {v1}, Lcom/android/internal/telephony/Operators;-><init>()V

    .line 115
    .local v1, init:Lcom/android/internal/telephony/Operators;
    invoke-direct {v1}, Lcom/android/internal/telephony/Operators;->initList()Ljava/util/HashMap;

    move-result-object v2

    .line 116
    .local v2, operators:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_3e
    sput-object v3, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    .line 117
    sget-object p0, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    goto :goto_10

    .line 107
    .end local v1           #init:Lcom/android/internal/telephony/Operators;
    .end local v2           #operators:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_43
    move-exception v0

    .line 110
    .local v0, E:Ljava/lang/NumberFormatException;
    sput-object p0, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    .line 111
    sget-object p0, Lcom/android/internal/telephony/Operators;->storedOperators:Ljava/lang/String;

    goto :goto_10

    .end local v0           #E:Ljava/lang/NumberFormatException;
    .restart local v1       #init:Lcom/android/internal/telephony/Operators;
    .restart local v2       #operators:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_49
    move-object v3, p0

    .line 116
    goto :goto_3e
.end method


# virtual methods
.method public unOptimizedOperatorReplace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "response"

    .prologue
    .line 131
    if-eqz p1, :cond_10

    const/4 v1, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_11

    .line 149
    .end local p1
    :cond_10
    :goto_10
    return-object p1

    .line 139
    .restart local p1
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_30

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/Operators;->unOptOperators:Ljava/util/Map;

    if-nez v1, :cond_1e

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/Operators;->initList()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/Operators;->unOptOperators:Ljava/util/Map;

    .line 149
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/telephony/Operators;->unOptOperators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/Operators;->unOptOperators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2e
    move-object p1, v1

    goto :goto_10

    .line 140
    :catch_30
    move-exception v0

    .line 142
    .local v0, E:Ljava/lang/NumberFormatException;
    goto :goto_10

    .end local v0           #E:Ljava/lang/NumberFormatException;
    :cond_32
    move-object v1, p1

    .line 149
    goto :goto_2e
.end method
