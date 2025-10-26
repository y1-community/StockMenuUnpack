.class public Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "UnitPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitPreferencesSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mapToUnitPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const-class v0, Lcom/ibm/icu/impl/units/UnitPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    return-void
.end method

.method private insertUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;)V
    .locals 1

    .line 198
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/units/UnitPreferences;->formMapKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 201
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    goto :goto_0

    .line 203
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 204
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    .line 207
    :goto_0
    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMapToUnitPreferences()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;",
            ">;>;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->mapToUnitPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v2

    const/4 v4, 0x0

    .line 144
    :goto_0
    invoke-interface {v2, v4, v0, v1}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v6

    const/4 v7, 0x0

    .line 149
    :goto_1
    invoke-interface {v6, v7, v0, v1}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v9

    const/4 v10, 0x0

    .line 154
    :goto_2
    invoke-interface {v9, v10, v0, v1}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v12

    .line 159
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 160
    :goto_3
    invoke-interface {v12, v14, v1}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 163
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "1"

    const-string v18, ""

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .line 168
    :goto_4
    invoke-interface {v15, v9, v0, v1}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unit"

    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    :cond_0
    const-string v1, "geq"

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_1
    const-string v1, "skeleton"

    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_2
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_4

    .line 182
    :cond_3
    new-instance v0, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    invoke-direct {v0, v3, v2, v6}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v9, v18

    goto :goto_3

    :cond_4
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    .line 190
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;

    move-object/from16 v2, p0

    .line 186
    invoke-direct {v2, v5, v8, v11, v1}, Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreferencesSink;->insertUnitPreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/ibm/icu/impl/units/UnitPreferences$UnitPreference;)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    move-object/from16 v9, v18

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v2, p0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_7
    move-object/from16 v2, p0

    return-void
.end method
