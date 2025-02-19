<script>
    export let title, subtitle, checklist, link, image, save_the_date, order;
</script>

<section class="hero-section" id="section_{order}">
    <div class="hero-container" style="background-image: url({image});}">
        <div class="content">

            <h2>{subtitle}</h2>
            <h1>{title}</h1>

            <div class="checklist">
                {#each checklist as item}
                    <p>
                        <i class="bi-check-circle-fill" />
                        {item}
                    </p>
                {/each}
            </div>

            <a href="{link.url}" class="custom-link custom-btn btn mt-4">
                {link.text}
            </a>
        </div>

        <div class="save-the-date-wrapper">
            <div class="save-the-date-thumb">
                <h4 class="save-the-date-title">Save the date</h4>

                <div class="save-the-date-body">
                    <span class="date">{save_the_date}</span>
                </div>
            </div>
        </div>
    </div>
</section>

<style>
    section {
        padding-left: 20px;
        padding-right: 20px;
        display: flex;
    }
    .hero-container {
        background-color: #d9d8d6;
        background-repeat: no-repeat;
        background-size: cover;
        border-radius: var(--border-radius-small);
        position: relative;
        overflow: hidden;
        padding: 50px;
        height: calc(1320px * 0.75);
        justify-content: flex-end;
        flex-direction: column;
        max-width: 1320px;
        width: 100%;
        margin-right: auto;
        margin-left: auto;
    }
    .content {
        flex: 0 0 auto;
        width: 50%;
    }
    h1, .checklist p {
        color: navy;
    }
    h2 {
        color: var(--custom-btn-bg-color);
    }
    i {
        color: var(--icon-color);
    }
    .custom-btn {
        background: var(--custom-btn-bg-color);
        border: 0;
        color: var(--white-color);
        font-family: var(--title-font-family);
        font-size: var(--p-font-size);
        font-weight: var(--font-weight-bold);
        text-transform: uppercase;
        position: relative;
        overflow: hidden;
        padding: 12px 24px;
        margin-top: 1.5rem;
        display: inline-block;
    }
    .save-the-date-wrapper {
        margin-top: -25%;
        margin-left: auto;
        flex: 0 0 auto;
        width: 25%;
        max-width: 100%;
        padding-right: calc(var(--bs-gutter-x) * .5);
        padding-left: calc(var(--bs-gutter-x) * .5);
    }
    .save-the-date-thumb {
        background: var(--white-color);
        border-radius: var(--border-radius-small);
        display: inline-block;
        position: relative;
        overflow: hidden;
        text-align: left;
    }
    .save-the-date-title {
        background: var(--primary-color);
        color: var(--white-color);
        margin-bottom: 0;
        padding: 10px 20px;
    }
    .save-the-date-body {
        padding: 15px 20px;
    }
    @media (max-width: 1099px) {
        .hero-container {
            height: inherit;
        }
    }
    @media (max-width: 799px) {
        .content {
            width: 100%;
        }
        .save-the-date-wrapper {
            margin: 40px 0;
            width: initial;
        }
    }
</style>
