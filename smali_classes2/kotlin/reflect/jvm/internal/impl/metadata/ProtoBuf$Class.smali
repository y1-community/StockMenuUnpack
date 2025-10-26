.class public final Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "ProtoBuf.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ClassOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Class"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;,
        Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ClassOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/Parser<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;


# instance fields
.field private bitField0_:I

.field private companionObjectName_:I

.field private constructor_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private enumEntry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private flags_:I

.field private fqName_:I

.field private function_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;",
            ">;"
        }
    .end annotation
.end field

.field private inlineClassUnderlyingPropertyName_:I

.field private inlineClassUnderlyingTypeId_:I

.field private inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nestedClassNameMemoizedSerializedSize:I

.field private nestedClassName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
            ">;"
        }
    .end annotation
.end field

.field private sealedSubclassFqNameMemoizedSerializedSize:I

.field private sealedSubclassFqName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supertypeIdMemoizedSerializedSize:I

.field private supertypeId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private supertype_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;",
            ">;"
        }
    .end annotation
.end field

.field private typeAlias_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;",
            ">;"
        }
    .end annotation
.end field

.field private typeParameter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;",
            ">;"
        }
    .end annotation
.end field

.field private typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

.field private final unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

.field private versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

.field private versionRequirement_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8837
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    .line 11781
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 11782
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 8559
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v4, -0x1

    .line 9124
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 9147
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 9345
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 9477
    iput-byte v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 9628
    iput v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 8560
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->initFields()V

    .line 8562
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->newOutput()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;

    move-result-object v4

    const/4 v5, 0x1

    .line 8564
    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v13, 0x8

    const/high16 v14, 0x20000

    const/16 v5, 0x80

    const/16 v12, 0x10

    const/16 v11, 0x20

    const/16 v10, 0x40

    if-nez v7, :cond_25

    .line 8570
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readTag()I

    move-result v9

    const/16 v16, 0x0

    sparse-switch v9, :sswitch_data_0

    const/4 v15, 0x1

    .line 8576
    invoke-virtual {v1, v2, v6, v3, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->parseUnknownField(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    goto/16 :goto_7

    .line 8775
    :sswitch_0
    iget v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_0

    .line 8776
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;

    move-result-object v16

    :cond_0
    move-object/from16 v9, v16

    .line 8778
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v15, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    iput-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    if-eqz v9, :cond_1

    .line 8780
    invoke-virtual {v9, v15}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;

    .line 8781
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v9

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    .line 8783
    :cond_1
    iget v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v9, v5

    iput v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto/16 :goto_5

    .line 8761
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v9

    .line 8762
    invoke-virtual {v2, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v9

    and-int v15, v8, v14

    if-eq v15, v14, :cond_2

    .line 8763
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_2

    .line 8764
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    or-int/2addr v8, v14

    .line 8767
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_3

    .line 8768
    iget-object v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x80

    goto :goto_1

    .line 8770
    :cond_3
    invoke-virtual {v2, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_5

    :sswitch_2
    and-int v5, v8, v14

    if-eq v5, v14, :cond_4

    .line 8754
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    or-int/2addr v8, v14

    .line 8757
    :cond_4
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8741
    :sswitch_3
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_5

    .line 8742
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    move-result-object v16

    :cond_5
    move-object/from16 v5, v16

    .line 8744
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    if-eqz v5, :cond_6

    .line 8746
    invoke-virtual {v5, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;

    .line 8747
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v5

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 8749
    :cond_6
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v5, v10

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto/16 :goto_5

    .line 8735
    :sswitch_4
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v5, v11

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8736
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    goto/16 :goto_5

    .line 8723
    :sswitch_5
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v5, v12

    if-ne v5, v12, :cond_7

    .line 8724
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v16

    :cond_7
    move-object/from16 v5, v16

    .line 8726
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    if-eqz v5, :cond_8

    .line 8728
    invoke-virtual {v5, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    .line 8729
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->buildPartial()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v5

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 8731
    :cond_8
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v5, v12

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    goto/16 :goto_5

    .line 8717
    :sswitch_6
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/2addr v5, v13

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8718
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    goto/16 :goto_5

    .line 8704
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 8705
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit16 v9, v8, 0x1000

    const/16 v15, 0x1000

    if-eq v9, v15, :cond_9

    .line 8706
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_9

    .line 8707
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    .line 8710
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_a

    .line 8711
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8713
    :cond_a
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_5

    :sswitch_8
    and-int/lit16 v5, v8, 0x1000

    const/16 v9, 0x1000

    if-eq v5, v9, :cond_b

    .line 8697
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    .line 8700
    :cond_b
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_9
    and-int/lit16 v5, v8, 0x800

    const/16 v9, 0x800

    if-eq v5, v9, :cond_c

    .line 8689
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x800

    .line 8692
    :cond_c
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_a
    and-int/lit16 v5, v8, 0x400

    const/16 v9, 0x400

    if-eq v5, v9, :cond_d

    .line 8681
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    .line 8684
    :cond_d
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_b
    and-int/lit16 v5, v8, 0x200

    const/16 v9, 0x200

    if-eq v5, v9, :cond_e

    .line 8673
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    .line 8676
    :cond_e
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_c
    and-int/lit16 v5, v8, 0x100

    const/16 v9, 0x100

    if-eq v5, v9, :cond_f

    .line 8665
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    .line 8668
    :cond_f
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_d
    and-int/lit16 v5, v8, 0x80

    const/16 v9, 0x80

    if-eq v5, v9, :cond_10

    .line 8657
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    or-int/lit16 v8, v8, 0x80

    .line 8660
    :cond_10
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8643
    :sswitch_e
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 8644
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v9, v8, 0x40

    if-eq v9, v10, :cond_11

    .line 8645
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_11

    .line 8646
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    .line 8649
    :cond_11
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_12

    .line 8650
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 8652
    :cond_12
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_5

    :sswitch_f
    and-int/lit8 v5, v8, 0x40

    if-eq v5, v10, :cond_13

    .line 8636
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x40

    .line 8639
    :cond_13
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_10
    and-int/lit8 v5, v8, 0x10

    if-eq v5, v12, :cond_14

    .line 8628
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x10

    .line 8631
    :cond_14
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_11
    and-int/lit8 v5, v8, 0x8

    if-eq v5, v13, :cond_15

    .line 8620
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x8

    .line 8623
    :cond_15
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 8614
    :sswitch_12
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8615
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    goto :goto_5

    .line 8609
    :sswitch_13
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8610
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    goto :goto_5

    .line 8596
    :sswitch_14
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 8597
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v5

    and-int/lit8 v9, v8, 0x20

    if-eq v9, v11, :cond_16

    .line 8598
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_16

    .line 8599
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 8602
    :cond_16
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_17

    .line 8603
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8605
    :cond_17
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_5

    :sswitch_15
    and-int/lit8 v5, v8, 0x20

    if-eq v5, v11, :cond_18

    .line 8589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    .line 8592
    :cond_18
    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v15, 0x1

    goto :goto_8

    .line 8583
    :sswitch_16
    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v15, 0x1

    or-int/2addr v5, v15

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    .line 8584
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :sswitch_17
    const/4 v15, 0x1

    :goto_6
    const/4 v7, 0x1

    goto :goto_8

    :goto_7
    if-nez v5, :cond_19

    goto :goto_6

    :cond_19
    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 8791
    :try_start_1
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 8789
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    and-int/lit8 v3, v8, 0x20

    if-ne v3, v11, :cond_1a

    .line 8795
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    :cond_1a
    and-int/lit8 v3, v8, 0x8

    if-ne v3, v13, :cond_1b

    .line 8798
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    :cond_1b
    and-int/lit8 v3, v8, 0x10

    if-ne v3, v12, :cond_1c

    .line 8801
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    :cond_1c
    and-int/lit8 v3, v8, 0x40

    if-ne v3, v10, :cond_1d

    .line 8804
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    :cond_1d
    and-int/lit16 v3, v8, 0x80

    const/16 v5, 0x80

    if-ne v3, v5, :cond_1e

    .line 8807
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    :cond_1e
    and-int/lit16 v3, v8, 0x100

    const/16 v5, 0x100

    if-ne v3, v5, :cond_1f

    .line 8810
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    :cond_1f
    and-int/lit16 v3, v8, 0x200

    const/16 v5, 0x200

    if-ne v3, v5, :cond_20

    .line 8813
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    :cond_20
    and-int/lit16 v3, v8, 0x400

    const/16 v5, 0x400

    if-ne v3, v5, :cond_21

    .line 8816
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    :cond_21
    and-int/lit16 v3, v8, 0x800

    const/16 v5, 0x800

    if-ne v3, v5, :cond_22

    .line 8819
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    :cond_22
    and-int/lit16 v3, v8, 0x1000

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_23

    .line 8822
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    :cond_23
    and-int v3, v8, v14

    if-ne v3, v14, :cond_24

    .line 8825
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8828
    :cond_24
    :try_start_2
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8832
    :catch_2
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    throw v2

    .line 8834
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->makeExtensionsImmutable()V

    throw v2

    :cond_25
    and-int/lit8 v2, v8, 0x20

    if-ne v2, v11, :cond_26

    .line 8795
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    :cond_26
    and-int/lit8 v2, v8, 0x8

    if-ne v2, v13, :cond_27

    .line 8798
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    :cond_27
    and-int/lit8 v2, v8, 0x10

    if-ne v2, v12, :cond_28

    .line 8801
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    :cond_28
    and-int/lit8 v2, v8, 0x40

    if-ne v2, v10, :cond_29

    .line 8804
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    :cond_29
    and-int/lit16 v2, v8, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2a

    .line 8807
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    :cond_2a
    and-int/lit16 v2, v8, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2b

    .line 8810
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    :cond_2b
    and-int/lit16 v2, v8, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_2c

    .line 8813
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    :cond_2c
    and-int/lit16 v2, v8, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2d

    .line 8816
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    :cond_2d
    and-int/lit16 v2, v8, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_2e

    .line 8819
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    :cond_2e
    and-int/lit16 v2, v8, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_2f

    .line 8822
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    :cond_2f
    and-int v2, v8, v14

    if-ne v2, v14, :cond_30

    .line 8825
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 8828
    :cond_30
    :try_start_3
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8832
    :catch_3
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v2

    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString$Output;->toByteString()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object v3

    iput-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    throw v2

    .line 8834
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x12 -> :sswitch_14
        0x18 -> :sswitch_13
        0x20 -> :sswitch_12
        0x2a -> :sswitch_11
        0x32 -> :sswitch_10
        0x38 -> :sswitch_f
        0x3a -> :sswitch_e
        0x42 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x5a -> :sswitch_a
        0x6a -> :sswitch_9
        0x80 -> :sswitch_8
        0x82 -> :sswitch_7
        0x88 -> :sswitch_6
        0x92 -> :sswitch_5
        0x98 -> :sswitch_4
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8534
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;",
            "*>;)V"
        }
    .end annotation

    .line 8541
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    const/4 v0, -0x1

    .line 9124
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 9147
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 9345
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 9477
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 9628
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 8542
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;->getUnknownFields()Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$1;)V
    .locals 0

    .line 8534
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8544
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 p1, -0x1

    .line 9124
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 9147
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    .line 9345
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 9477
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    .line 9628
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    .line 8544
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->EMPTY:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10100(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    return p1
.end method

.method static synthetic access$10302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method static synthetic access$10402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    return p1
.end method

.method static synthetic access$10502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    return-object p1
.end method

.method static synthetic access$10600(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10702(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-object p1
.end method

.method static synthetic access$10802(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    return p1
.end method

.method static synthetic access$10900(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    return-object p0
.end method

.method static synthetic access$8902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    return p1
.end method

.method static synthetic access$9002(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    return p1
.end method

.method static synthetic access$9102(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;I)I
    .locals 0

    .line 8534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    return p1
.end method

.method static synthetic access$9200(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9202(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9300(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9302(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9400(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9402(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9500(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9502(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9600(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9602(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9700(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9702(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9800(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9802(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9900(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Ljava/util/List;
    .locals 0

    .line 8534
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9902(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8534
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    .line 8548
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x6

    .line 9457
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    const/4 v0, 0x0

    .line 9458
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    .line 9459
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    .line 9460
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    .line 9461
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    .line 9462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    .line 9463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    .line 9464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    .line 9465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    .line 9466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    .line 9467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    .line 9468
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    .line 9469
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    .line 9470
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    .line 9471
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 9472
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    .line 9473
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    .line 9474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    .line 9475
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;->getDefaultInstance()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-void
.end method

.method public static newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 9811
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->access$8700()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 9814
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;->mergeFrom(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9787
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object p0
.end method


# virtual methods
.method public getCompanionObjectName()I
    .locals 1

    .line 9030
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    return v0
.end method

.method public getConstructor(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;
    .locals 1

    .line 9174
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    return-object p1
.end method

.method public getConstructorCount()I
    .locals 1

    .line 9168
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConstructorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;",
            ">;"
        }
    .end annotation

    .line 9155
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;
    .locals 1

    .line 8552
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;
    .locals 1

    .line 8534
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getDefaultInstanceForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    move-result-object v0

    return-object v0
.end method

.method public getEnumEntry(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;
    .locals 1

    .line 9314
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    return-object p1
.end method

.method public getEnumEntryCount()I
    .locals 1

    .line 9308
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;",
            ">;"
        }
    .end annotation

    .line 9295
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 9000
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    return v0
.end method

.method public getFqName()I
    .locals 1

    .line 9015
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    return v0
.end method

.method public getFunction(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;
    .locals 1

    .line 9209
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    return-object p1
.end method

.method public getFunctionCount()I
    .locals 1

    .line 9203
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFunctionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;",
            ">;"
        }
    .end annotation

    .line 9190
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    return-object v0
.end method

.method public getInlineClassUnderlyingPropertyName()I
    .locals 1

    .line 9359
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    return v0
.end method

.method public getInlineClassUnderlyingType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    .line 9374
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object v0
.end method

.method public getInlineClassUnderlyingTypeId()I
    .locals 1

    .line 9389
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    return v0
.end method

.method public getNestedClassNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9133
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/Parser<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;",
            ">;"
        }
    .end annotation

    .line 8849
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->PARSER:Lkotlin/reflect/jvm/internal/impl/protobuf/Parser;

    return-object v0
.end method

.method public getProperty(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;
    .locals 1

    .line 9244
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    return-object p1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 9238
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;",
            ">;"
        }
    .end annotation

    .line 9225
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getSealedSubclassFqNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9331
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 9630
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9634
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 9635
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 9640
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 9641
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 9645
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 9647
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9650
    :cond_3
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    .line 9652
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    .line 9653
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9656
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    .line 9657
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    .line 9660
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    const/4 v4, 0x5

    .line 9661
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 9664
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v4, 0x6

    .line 9665
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 9670
    :goto_4
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 9671
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    add-int/2addr v0, v4

    .line 9675
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getNestedClassNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    .line 9677
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9680
    :cond_9
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    const/4 v1, 0x0

    .line 9682
    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v1, v4, :cond_a

    .line 9683
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 9686
    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    const/16 v4, 0x9

    .line 9687
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 9690
    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    const/16 v4, 0xa

    .line 9691
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 9694
    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    const/16 v4, 0xb

    .line 9695
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 9698
    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e

    const/16 v4, 0xd

    .line 9699
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 9704
    :goto_a
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_f

    .line 9705
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    add-int/2addr v0, v4

    .line 9709
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    add-int/lit8 v0, v0, 0x2

    .line 9711
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 9714
    :cond_10
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    .line 9716
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0x11

    .line 9717
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9720
    :cond_11
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0x12

    .line 9721
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9724
    :cond_12
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_13

    const/16 v1, 0x13

    .line 9725
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9728
    :cond_13
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v5, 0x40

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    const/16 v1, 0x1e

    .line 9729
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-static {v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    const/4 v1, 0x0

    .line 9734
    :goto_b
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    .line 9735
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    add-int/2addr v0, v1

    .line 9739
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getVersionRequirementList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 9741
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 9742
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->computeMessageSize(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9745
    :cond_16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9746
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 9747
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedSerializedSize:I

    return v0
.end method

.method public getSupertype(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1

    .line 9093
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object p1
.end method

.method public getSupertypeCount()I
    .locals 1

    .line 9087
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupertypeIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9110
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    return-object v0
.end method

.method public getSupertypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;",
            ">;"
        }
    .end annotation

    .line 9074
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeAlias(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;
    .locals 1

    .line 9279
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    return-object p1
.end method

.method public getTypeAliasCount()I
    .locals 1

    .line 9273
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeAliasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;",
            ">;"
        }
    .end annotation

    .line 9260
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;
    .locals 1

    .line 9058
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    return-object p1
.end method

.method public getTypeParameterCount()I
    .locals 1

    .line 9052
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;",
            ">;"
        }
    .end annotation

    .line 9039
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    return-object v0
.end method

.method public getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;
    .locals 1

    .line 9404
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    return-object v0
.end method

.method public getVersionRequirementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9418
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    return-object v0
.end method

.method public getVersionRequirementTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;
    .locals 1

    .line 9453
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    return-object v0
.end method

.method public hasCompanionObjectName()Z
    .locals 2

    .line 9024
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFlags()Z
    .locals 2

    .line 8981
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFqName()Z
    .locals 2

    .line 9009
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingPropertyName()Z
    .locals 2

    .line 9353
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingType()Z
    .locals 2

    .line 9368
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInlineClassUnderlyingTypeId()Z
    .locals 2

    .line 9383
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypeTable()Z
    .locals 2

    .line 9398
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersionRequirementTable()Z
    .locals 2

    .line 9447
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 9479
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 9483
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasFqName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9484
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 9487
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameterCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 9488
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9489
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 9493
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 9494
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertype(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 9495
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 9499
    :goto_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructorCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 9500
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getConstructor(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 9501
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 9505
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFunctionCount()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 9506
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getFunction(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    .line 9507
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 9511
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getPropertyCount()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 9512
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getProperty(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_b

    .line 9513
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    .line 9517
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeAliasCount()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 9518
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeAlias(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeAlias;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_d

    .line 9519
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    .line 9523
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getEnumEntryCount()I

    move-result v3

    if-ge v0, v3, :cond_10

    .line 9524
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getEnumEntry(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_f

    .line 9525
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 9529
    :cond_10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasInlineClassUnderlyingType()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9530
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getInlineClassUnderlyingType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 9531
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    .line 9535
    :cond_11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->hasTypeTable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9536
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getTypeTable()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 9537
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    .line 9541
    :cond_12
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    .line 9542
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v2

    .line 9545
    :cond_13
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 9812
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .locals 1

    .line 8534
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilderForType()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;
    .locals 1

    .line 9816
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newBuilder(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite$Builder;
    .locals 1

    .line 8534
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9551
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSerializedSize()I

    .line 9553
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->newExtensionWriter()Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 9555
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 9556
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->flags_:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9558
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSupertypeIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x12

    if-lez v1, :cond_1

    .line 9559
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 9560
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeIdMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 9562
    :goto_0
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 9563
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertypeId_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9565
    :cond_2
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 9566
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9568
    :cond_3
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 9569
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->companionObjectName_:I

    invoke-virtual {p1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    const/4 v3, 0x0

    .line 9571
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 9572
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeParameter_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 9574
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 9575
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->supertype_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9577
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getNestedClassNameList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/16 v3, 0x3a

    .line 9578
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 9579
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassNameMemoizedSerializedSize:I

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_7
    const/4 v3, 0x0

    .line 9581
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 9582
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->nestedClassName_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 9584
    :goto_4
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ge v3, v4, :cond_9

    .line 9585
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->constructor_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 9587
    :goto_5
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    const/16 v4, 0x9

    .line 9588
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->function_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    .line 9590
    :goto_6
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    const/16 v4, 0xa

    .line 9591
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->property_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    .line 9593
    :goto_7
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    const/16 v4, 0xb

    .line 9594
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeAlias_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    .line 9596
    :goto_8
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    const/16 v4, 0xd

    .line 9597
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->enumEntry_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 9599
    :cond_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->getSealedSubclassFqNameList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    const/16 v3, 0x82

    .line 9600
    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 9601
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqNameMemoizedSerializedSize:I

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    :cond_e
    const/4 v3, 0x0

    .line 9603
    :goto_9
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 9604
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->sealedSubclassFqName_:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 9606
    :cond_f
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/16 v3, 0x11

    .line 9607
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingPropertyName_:I

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9609
    :cond_10
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    .line 9610
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    .line 9612
    :cond_11
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_12

    const/16 v2, 0x13

    .line 9613
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->inlineClassUnderlyingTypeId_:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9615
    :cond_12
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_13

    const/16 v2, 0x1e

    .line 9616
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->typeTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    .line 9618
    :cond_13
    :goto_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x1f

    .line 9619
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirement_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9621
    :cond_14
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    .line 9622
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->versionRequirementTable_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$VersionRequirementTable;

    invoke-virtual {p1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeMessage(ILkotlin/reflect/jvm/internal/impl/protobuf/MessageLite;)V

    :cond_15
    const/16 v1, 0x4a38

    .line 9624
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 9625
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->unknownFields:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->writeRawBytes(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void
.end method
