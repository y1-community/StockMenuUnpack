.class public final Lkotlin/reflect/jvm/KCallablesJvm;
.super Ljava/lang/Object;
.source "KCallablesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\",\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "value",
        "",
        "isAccessible",
        "Lkotlin/reflect/KCallable;",
        "(Lkotlin/reflect/KCallable;)Z",
        "setAccessible",
        "(Lkotlin/reflect/KCallable;Z)V",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isAccessible(Lkotlin/reflect/KCallable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KCallable<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 43
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_13

    .line 44
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_13

    .line 45
    check-cast p0, Lkotlin/reflect/KMutableProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaSetter(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    :goto_2
    if-eqz p0, :cond_13

    goto :goto_5

    .line 46
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    if-eqz v0, :cond_6

    .line 47
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_13

    .line 48
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_13

    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_f

    .line 49
    :cond_6
    instance-of v0, p0, Lkotlin/reflect/KProperty$Getter;

    if-eqz v0, :cond_9

    .line 50
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    invoke-interface {v0}, Lkotlin/reflect/KProperty$Getter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_13

    .line 51
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    :goto_7
    if-eqz p0, :cond_13

    goto :goto_5

    .line 52
    :cond_9
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty$Setter;

    if-eqz v0, :cond_c

    .line 53
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    invoke-interface {v0}, Lkotlin/reflect/KMutableProperty$Setter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_13

    .line 54
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    :goto_9
    if-eqz p0, :cond_13

    goto :goto_5

    .line 55
    :cond_c
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_14

    .line 56
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    :goto_a
    if-eqz v3, :cond_13

    .line 57
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_e

    :goto_b
    move-object p0, v3

    goto :goto_c

    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_b

    :cond_f
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    :goto_c
    instance-of v4, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v4, :cond_10

    move-object v3, p0

    check-cast v3, Ljava/lang/reflect/AccessibleObject;

    :cond_10
    if-nez v3, :cond_11

    const/4 p0, 0x1

    goto :goto_d

    :cond_11
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p0

    :goto_d
    if-eqz p0, :cond_13

    .line 58
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_e

    :cond_12
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result p0

    :goto_e
    if-eqz p0, :cond_13

    goto/16 :goto_5

    :cond_13
    :goto_f
    return v1

    .line 59
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown callable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method public static final setAccessible(Lkotlin/reflect/KCallable;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KCallable<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty;

    if-eqz v0, :cond_3

    .line 65
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    :goto_0
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    :goto_1
    check-cast p0, Lkotlin/reflect/KMutableProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaSetter(Lkotlin/reflect/KMutableProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_2

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_9

    .line 69
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/KProperty;

    if-eqz v0, :cond_6

    .line 70
    check-cast p0, Lkotlin/reflect/KProperty;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    :goto_2
    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaGetter(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_9

    .line 73
    :cond_6
    instance-of v0, p0, Lkotlin/reflect/KProperty$Getter;

    if-eqz v0, :cond_9

    .line 74
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    invoke-interface {v0}, Lkotlin/reflect/KProperty$Getter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    :goto_3
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_9

    .line 77
    :cond_9
    instance-of v0, p0, Lkotlin/reflect/KMutableProperty$Setter;

    if-eqz v0, :cond_c

    .line 78
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    invoke-interface {v0}, Lkotlin/reflect/KMutableProperty$Setter;->getProperty()Lkotlin/reflect/KProperty;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaField(Lkotlin/reflect/KProperty;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 79
    :goto_4
    check-cast p0, Lkotlin/reflect/KFunction;

    invoke-static {p0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_9

    .line 81
    :cond_c
    instance-of v0, p0, Lkotlin/reflect/KFunction;

    if-eqz v0, :cond_13

    .line 82
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/KFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaMethod(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 83
    :goto_5
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->asKCallableImpl(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/KCallableImpl;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_e

    :goto_6
    move-object p0, v1

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_6

    :cond_f
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/calls/Caller;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    :goto_7
    instance-of v2, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v2, :cond_10

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/AccessibleObject;

    :cond_10
    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 84
    :goto_8
    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaConstructor(Lkotlin/reflect/KFunction;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :goto_9
    return-void

    .line 86
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown callable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method
