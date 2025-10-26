.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "JvmBuiltInsSignatures.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmBuiltInsSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n13#2:188\n13#2:194\n13#2:200\n13#2:201\n13#2:202\n13#2:203\n13#2:204\n1444#3,5:189\n1444#3,5:195\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n*L\n60#1:188\n160#1:194\n24#1:200\n68#1:201\n119#1:202\n138#1:203\n155#1:204\n61#1:189,5\n164#1:195,5\n*E\n"
.end annotation


# static fields
.field private static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

.field private static final MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    .line 18
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "toArray()[Ljava/lang/Object;"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "Collection"

    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v3, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v1, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    .line 200
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 25
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveValueMethodsSet()Ljava/util/Set;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "sort(Ljava/util/Comparator;)V"

    aput-object v8, v7, v5

    const-string v9, "List"

    .line 27
    invoke-virtual {v1, v9, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/16 v7, 0x30

    new-array v7, v7, [Ljava/lang/String;

    const-string v10, "codePointAt(I)I"

    aput-object v10, v7, v5

    const-string v10, "codePointBefore(I)I"

    aput-object v10, v7, v6

    const-string v10, "codePointCount(II)I"

    aput-object v10, v7, v2

    const-string v10, "compareToIgnoreCase(Ljava/lang/String;)I"

    const/4 v11, 0x3

    aput-object v10, v7, v11

    const-string v10, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const/4 v12, 0x4

    aput-object v10, v7, v12

    const-string v10, "contains(Ljava/lang/CharSequence;)Z"

    const/4 v13, 0x5

    aput-object v10, v7, v13

    const-string v10, "contentEquals(Ljava/lang/CharSequence;)Z"

    const/4 v14, 0x6

    aput-object v10, v7, v14

    const-string v10, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const/4 v15, 0x7

    aput-object v10, v7, v15

    const-string v10, "endsWith(Ljava/lang/String;)Z"

    const/16 v16, 0x8

    aput-object v10, v7, v16

    const-string v10, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const/16 v15, 0x9

    aput-object v10, v7, v15

    const-string v10, "getBytes()[B"

    const/16 v15, 0xa

    aput-object v10, v7, v15

    const-string v10, "getBytes(II[BI)V"

    const/16 v14, 0xb

    aput-object v10, v7, v14

    const/16 v10, 0xc

    const-string v20, "getBytes(Ljava/lang/String;)[B"

    aput-object v20, v7, v10

    const/16 v10, 0xd

    const-string v20, "getBytes(Ljava/nio/charset/Charset;)[B"

    aput-object v20, v7, v10

    const/16 v10, 0xe

    const-string v20, "getChars(II[CI)V"

    aput-object v20, v7, v10

    const/16 v10, 0xf

    const-string v20, "indexOf(I)I"

    aput-object v20, v7, v10

    const/16 v10, 0x10

    const-string v20, "indexOf(II)I"

    aput-object v20, v7, v10

    const/16 v10, 0x11

    const-string v20, "indexOf(Ljava/lang/String;)I"

    aput-object v20, v7, v10

    const/16 v10, 0x12

    const-string v20, "indexOf(Ljava/lang/String;I)I"

    aput-object v20, v7, v10

    const/16 v10, 0x13

    const-string v20, "intern()Ljava/lang/String;"

    aput-object v20, v7, v10

    const/16 v10, 0x14

    const-string v20, "isEmpty()Z"

    aput-object v20, v7, v10

    const/16 v10, 0x15

    const-string v21, "lastIndexOf(I)I"

    aput-object v21, v7, v10

    const/16 v10, 0x16

    const-string v21, "lastIndexOf(II)I"

    aput-object v21, v7, v10

    const/16 v10, 0x17

    const-string v21, "lastIndexOf(Ljava/lang/String;)I"

    aput-object v21, v7, v10

    const/16 v10, 0x18

    const-string v21, "lastIndexOf(Ljava/lang/String;I)I"

    aput-object v21, v7, v10

    const/16 v10, 0x19

    const-string v21, "matches(Ljava/lang/String;)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1a

    const-string v21, "offsetByCodePoints(II)I"

    aput-object v21, v7, v10

    const/16 v10, 0x1b

    const-string v21, "regionMatches(ILjava/lang/String;II)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1c

    const-string v21, "regionMatches(ZILjava/lang/String;II)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x1d

    const-string v21, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x1e

    const-string v21, "replace(CC)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x1f

    const-string v21, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x20

    const-string v21, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x21

    const-string v21, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x22

    const-string v21, "split(Ljava/lang/String;)[Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x23

    const-string v21, "startsWith(Ljava/lang/String;I)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x24

    const-string v21, "startsWith(Ljava/lang/String;)Z"

    aput-object v21, v7, v10

    const/16 v10, 0x25

    const-string v21, "substring(II)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x26

    const-string v21, "substring(I)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x27

    const-string v21, "toCharArray()[C"

    aput-object v21, v7, v10

    const/16 v10, 0x28

    const-string v21, "toLowerCase()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x29

    const-string v21, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2a

    const-string v21, "toUpperCase()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2b

    const-string v21, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2c

    const-string v21, "trim()Ljava/lang/String;"

    aput-object v21, v7, v10

    const/16 v10, 0x2d

    const-string v21, "isBlank()Z"

    aput-object v21, v7, v10

    const/16 v10, 0x2e

    const-string v21, "lines()Ljava/util/stream/Stream;"

    aput-object v21, v7, v10

    const/16 v10, 0x2f

    const-string v21, "repeat(I)Ljava/lang/String;"

    aput-object v21, v7, v10

    const-string v10, "String"

    .line 29
    invoke-virtual {v1, v10, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/String;

    const-string v21, "isInfinite()Z"

    aput-object v21, v7, v5

    const-string v22, "isNaN()Z"

    aput-object v22, v7, v6

    const-string v14, "Double"

    .line 51
    invoke-virtual {v1, v14, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/String;

    aput-object v21, v7, v5

    aput-object v22, v7, v6

    const-string v14, "Float"

    .line 52
    invoke-virtual {v1, v14, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/String;

    const-string v21, "getDeclaringClass()Ljava/lang/Class;"

    aput-object v21, v7, v5

    const-string v21, "finalize()V"

    aput-object v21, v7, v6

    const-string v13, "Enum"

    .line 54
    invoke-virtual {v1, v13, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/String;

    aput-object v20, v7, v5

    const-string v13, "CharSequence"

    .line 55
    invoke-virtual {v1, v13, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 25
    invoke-static {v3, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 24
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    .line 201
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "codePoints()Ljava/util/stream/IntStream;"

    aput-object v7, v3, v5

    const-string v7, "chars()Ljava/util/stream/IntStream;"

    aput-object v7, v3, v6

    .line 69
    invoke-virtual {v1, v13, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v13, "forEachRemaining(Ljava/util/function/Consumer;)V"

    aput-object v13, v7, v5

    const-string v13, "Iterator"

    .line 74
    invoke-virtual {v1, v13, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/String;

    const-string v13, "forEach(Ljava/util/function/Consumer;)V"

    aput-object v13, v7, v5

    const-string v13, "spliterator()Ljava/util/Spliterator;"

    aput-object v13, v7, v6

    const-string v12, "Iterable"

    .line 79
    invoke-virtual {v1, v12, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v15, [Ljava/lang/String;

    const-string v12, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    aput-object v12, v7, v5

    const-string v12, "fillInStackTrace()Ljava/lang/Throwable;"

    aput-object v12, v7, v6

    const-string v12, "getLocalizedMessage()Ljava/lang/String;"

    aput-object v12, v7, v2

    const-string v12, "printStackTrace()V"

    aput-object v12, v7, v11

    const-string v12, "printStackTrace(Ljava/io/PrintStream;)V"

    const/16 v20, 0x4

    aput-object v12, v7, v20

    const-string v12, "printStackTrace(Ljava/io/PrintWriter;)V"

    const/16 v21, 0x5

    aput-object v12, v7, v21

    const-string v12, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const/16 v19, 0x6

    aput-object v12, v7, v19

    const-string v12, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const/16 v17, 0x7

    aput-object v12, v7, v17

    const-string v12, "getSuppressed()[Ljava/lang/Throwable;"

    aput-object v12, v7, v16

    const-string v12, "addSuppressed(Ljava/lang/Throwable;)V"

    const/16 v18, 0x9

    aput-object v12, v7, v18

    const-string v12, "Throwable"

    .line 84
    invoke-virtual {v1, v12, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/4 v7, 0x4

    new-array v12, v7, [Ljava/lang/String;

    aput-object v13, v12, v5

    const-string v7, "parallelStream()Ljava/util/stream/Stream;"

    aput-object v7, v12, v6

    const-string v7, "stream()Ljava/util/stream/Stream;"

    aput-object v7, v12, v2

    const-string v7, "removeIf(Ljava/util/function/Predicate;)Z"

    aput-object v7, v12, v11

    .line 93
    invoke-virtual {v1, v4, v12}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v12, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v12, v7, v5

    .line 99
    invoke-virtual {v1, v9, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-array v7, v15, [Ljava/lang/String;

    const-string v12, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    aput-object v12, v7, v5

    const-string v12, "forEach(Ljava/util/function/BiConsumer;)V"

    aput-object v12, v7, v6

    const-string v12, "replaceAll(Ljava/util/function/BiFunction;)V"

    aput-object v12, v7, v2

    const-string v12, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v12, v7, v11

    const-string v12, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/4 v13, 0x4

    aput-object v12, v7, v13

    const-string v12, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v13, 0x5

    aput-object v12, v7, v13

    const-string v12, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const/4 v13, 0x6

    aput-object v12, v7, v13

    const-string v12, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v13, 0x7

    aput-object v12, v7, v13

    const-string v12, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v12, v7, v16

    const-string v12, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const/16 v13, 0x9

    aput-object v12, v7, v13

    const-string v12, "Map"

    .line 104
    invoke-virtual {v1, v12, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 69
    invoke-static {v3, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 68
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 202
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    new-array v3, v6, [Ljava/lang/String;

    const-string v7, "removeIf(Ljava/util/function/Predicate;)Z"

    aput-object v7, v3, v5

    .line 120
    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    .line 122
    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 120
    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    const/16 v4, 0x9

    new-array v7, v4, [Ljava/lang/String;

    const-string v4, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    aput-object v4, v7, v5

    const-string v4, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v4, v7, v6

    const-string v4, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v4, v7, v2

    const-string v4, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    aput-object v4, v7, v11

    const-string v4, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const-string v4, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const/4 v8, 0x5

    aput-object v4, v7, v8

    const-string v4, "replaceAll(Ljava/util/function/BiFunction;)V"

    const/4 v8, 0x6

    aput-object v4, v7, v8

    const-string v4, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v8, 0x7

    aput-object v4, v7, v8

    const-string v4, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    aput-object v4, v7, v16

    const-string v4, "Map"

    .line 124
    invoke-virtual {v1, v4, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 120
    invoke-static {v3, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 119
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 203
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 139
    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveStringConstructorsSet()Ljava/util/Set;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "D"

    aput-object v4, v3, v5

    .line 140
    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v14, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 139
    invoke-static {v0, v3}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "[C"

    aput-object v4, v3, v5

    const-string v4, "[CII"

    aput-object v4, v3, v6

    const-string v4, "[III"

    aput-object v4, v3, v2

    const-string v2, "[BIILjava/lang/String;"

    aput-object v2, v3, v11

    const-string v2, "[BIILjava/nio/charset/Charset;"

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const-string v2, "[BLjava/lang/String;"

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const-string v2, "[BLjava/nio/charset/Charset;"

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const-string v2, "[BII"

    const/4 v4, 0x7

    aput-object v2, v3, v4

    const-string v2, "[B"

    aput-object v2, v3, v16

    const-string v2, "Ljava/lang/StringBuffer;"

    const/16 v4, 0x9

    aput-object v2, v3, v4

    const-string v2, "Ljava/lang/StringBuilder;"

    aput-object v2, v3, v15

    .line 142
    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 139
    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 138
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    .line 204
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    aput-object v2, v1, v5

    .line 156
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "Throwable"

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 155
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildPrimitiveStringConstructorsSet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/16 v1, 0x8

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 162
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 163
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x6

    aput-object v2, v1, v5

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 161
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 164
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 195
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 196
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 166
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.wrapperFqName.shortName().asString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "Ljava/lang/String;"

    aput-object v7, v6, v3

    invoke-virtual {v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 197
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 199
    :cond_0
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 194
    check-cast v2, Ljava/util/Set;

    return-object v2
.end method

.method private final buildPrimitiveValueMethodsSet()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 61
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 189
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 190
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 62
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.wrapperFqName.shortName().asString()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v4, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Value()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-virtual {v0, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 191
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 193
    :cond_0
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 188
    check-cast v2, Ljava/util/Set;

    return-object v2
.end method


# virtual methods
.method public final getDROP_LIST_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getMUTABLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isSerializableInJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 174
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 176
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    const-class v0, Ljava/io/Serializable;

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method
