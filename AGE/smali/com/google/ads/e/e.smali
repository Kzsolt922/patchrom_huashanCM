.class public Lcom/google/ads/e/e;
.super Lcom/google/ads/b/e;


# direct methods
.method public constructor <init>(Lcom/google/ads/bv;Lcom/google/ads/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/b/e;-><init>(Lcom/google/ads/bv;Lcom/google/ads/g;)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e/e;->a:Lcom/google/ads/bv;

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/e/e;->a:Lcom/google/ads/bv;

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    invoke-virtual {v0}, Lcom/google/ads/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/ads/b/e;->canScrollHorizontally(I)Z

    move-result v0

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/e/e;->a:Lcom/google/ads/bv;

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/e/e;->a:Lcom/google/ads/bv;

    iget-object v0, v0, Lcom/google/ads/bv;->e:Lcom/google/ads/e/af;

    invoke-virtual {v0}, Lcom/google/ads/e/af;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/b/a;

    invoke-virtual {v0}, Lcom/google/ads/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/ads/b/e;->canScrollVertically(I)Z

    move-result v0

    goto :goto_0
.end method
