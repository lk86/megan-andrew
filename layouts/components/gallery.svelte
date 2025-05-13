<script>
    export let title, desc, photos, order;
</script>

<section class="gallery-section section-bg section-padding" id="section_{order}">
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

            {#if desc}
            <div class="desc">{@html desc}</div>
            <br>
            {/if}

            <div class="photos">
                {#each photos as photo, i}
                    <div class="thumb {['one', 'two', 'three'][i % 3]} {i % 2 === 0 ? 'even' : 'odd'}">
                        <img src="{photo.src}" alt="{photo.alt}">
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
    .photos {
        display: grid;
        grid: auto / repeat(3, 1fr);
        gap: 20px;
    }
    .thumb {
        border-radius: var(--border-radius-medium);
        position: relative;
        overflow: hidden;
    }
    .thumb.one {
        grid-row: span 1;
    }
    .thumb.two, .thumb.three {
        grid-row: span 1;
    }
    img {
        max-width: 100%;
        transform: scale(1.2);
    }
    @media (max-width: 599px) {
        .photos {
            grid-template-columns: 1fr;
        }
    }
</style>
