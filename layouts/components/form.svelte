<script>
    export let title, desc, image, attending, virtual, decline, order;
</script>

<section 
    class="rsvp-section section-padding"
    id="section_{order}"
    style="background-image: url({image});"
>
    <div class="container">
        <div class="row">

            <div class="rsvp-wrap">
                <div class="section-title-wrap">
                    <h2 class="section-title">{title}</h2>

                    <div class="section-title-bottom">
                        <span class="section-title-line"></span>
                        <i class="section-title-icon bi-heart-fill"></i>
                        <span class="section-title-line"></span>
                    </div>
                </div>

                <h5>{desc.intro} <span class="text-muted">{desc.main}</span></h5>
                <div class="col-lg-3 col-5 mx-auto">
                    <form action={attending}>
                        <button type="submit" class="rsvp-button">Attending In-Person</button>
                    </form>
                    <form action={virtual}>
                        <button type="submit" class="rsvp-button">Celebrating Virtually</button>
                    </form>
                    <form action={decline}>
                        <button type="submit" class="rsvp-button">Declining</button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>

<style>
    .rsvp-section {
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
    .rsvp-wrap {
        background: var(--white-color);
        border-radius: var(--border-radius-medium);
        padding: 50px;
    }
    h5 {
        margin-bottom: 20px;
    }
    .text-muted {
        --bs-text-opacity: 1;
        color: #6c757d;
    }
    .top {
        display: flex;
        gap: 40px;
    }
    input, select, textarea {
        width: 100%;
    }
    button {
        cursor: pointer;
        background: var(--primary-color);
        border: none;
        color: var(--white-color);
        font-size: var(--h4-font-size);
        font-family: var(--brand-font-family);
        font-weight: var(--font-weight-bold);
        transition: all 0.3s;
        margin-left: 10;
        margin-bottom: 10;
        position: relative;
        overflow: hidden;
    }
    button:hover {
        background: var(--secondary-color);
        border-color: transparent;
    }
    @media (max-width: 799px) {
        .top {
            display: block;
        }
    }
</style>
