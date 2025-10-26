.class final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;
.super Ljava/lang/Object;
.source "ReflectJavaMember.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReflectJavaMember.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/Java8ParameterNamesLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,103:1\n1#2:104\n11328#3:105\n11663#3,3:106\n*S KotlinDebug\n*F\n+ 1 ReflectJavaMember.kt\norg/jetbrains/kotlin/descriptors/runtime/structure/Java8ParameterNamesLoader\n*L\n98#1:105\n98#1:106,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;

.field private static cache:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildCache(Ljava/lang/reflect/Member;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;
    .locals 4

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    const-string v0, "getParameters"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 80
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getSafeClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "java.lang.reflect.Parameter"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 87
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    new-array v1, v1, [Ljava/lang/Class;

    const-string v3, "getName"

    invoke-virtual {p1, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v2

    .line 82
    :catch_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p1
.end method

.method public final getCache()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;
    .locals 1

    .line 73
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->cache:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    return-object v0
.end method

.method public final loadParameterNames(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->cache:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    if-nez v0, :cond_1

    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->getCache()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->buildCache(Ljava/lang/reflect/Member;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->setCache(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v0, v1

    .line 91
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;->getGetParameters()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    .line 96
    :cond_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;->getGetName()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, [Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 106
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_5
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final setCache(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;)V
    .locals 0

    .line 73
    sput-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader;->cache:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/Java8ParameterNamesLoader$Cache;

    return-void
.end method
