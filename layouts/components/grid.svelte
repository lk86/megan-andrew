<script>
    export let title, items, desc, order;
</script>

<section class="grid-section section-padding" id="section_{order}">
    <div class="container">
        <div class="row">

            <div class="section-title-wrap">
                <h2 class="section-title">{title}</h2>

                <div class="section-title-bottom">
                    <span class="section-title-line"></span>
                    <i class="section-title-icon bi-heart-fill"></i>
                    <span class="section-title-line"></span>
                </div>
            </div>

            <div class="items">
                {#each items as item}
                <div class="item">
                    <div class="image-hover-thumb">
                        {#if item?.image?.src}
                            <img src="{item.image.src}" alt="{item.image.alt}">
                        {/if}
                        {#if item?.map?.src}
                            <iframe 
                                class="google-map"
                                title="{item.map.title}"
                                src="{item.map.src}"
                                width="100%"
                                allowfullscreen="" 
                                loading="lazy">
                            </iframe>
                        {/if}
                    </div>

                    <div class="section-block">
                        <h3 class="my-3">{item.title}</h3>

                        <p class="mb-2">
                            <i class="bi-balloon-heart me-1"></i>
                            {item.message}
                            {#each item.bullets as bullet}
                            <p><i class="bi-balloon-heart-fill me-1"></i> {bullet}</p>
                            {/each}
                        </p>

                        <p>
                            <a href="{item.url}" class="custom-link custom-btn btn mt-4">
                                RSVP
                            </a>
                        </p>
                    </div>
                </div>
                {/each}
            </div>

        </div>
    </div>
</section>

<style>
    section {
        background-color: #f9f9f9;
    }
    .items {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 40px;
    }
    .image-hover-thumb {
        border-radius: var(--border-radius-small);
        display: block;
        overflow: hidden;
        margin-bottom: 20px;
    }
    img {
        transform: scale(1.05);
        transition: all 0.5s;
        max-width: 100%;
        height: auto;
    }
    img:hover {
        transform: scale(1.1);
    }
    .custom-btn {
        background: var(--custom-btn-bg-color);
        border: 0;
        color: var(--white-color);
        font-family: var(--brand-font-family);
        font-size: var(--p-font-size);
        font-weight: var(--font-weight-bold);
        text-transform: uppercase;
        position: relative;
        overflow: hidden;
        padding: 12px 24px;
        width: 50%;
        margin: auto;
        display: block;
    }
    iframe.google-map {
        height: 20vw;
        max-height: 275px;
        transform: scale(1.05);
    }
    @media (max-width: 799px) {
        .items {
            grid-template-columns: 1fr;
        }
    }
</style>
