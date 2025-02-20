<script>
    export let expanded = false;
</script>
<div id="sticky-wrapper" class="sticky-wrapper">
    <nav class="navbar">
        <div class="container">
            <a href="#section_0" class="navbar-brand" on:click={() => expanded = false}>
                <span>Megan</span>
                <i class="bi-heart brand-icon" />
                <span>Andrew</span>
            </a>

            <div class="navbar-collapse{expanded ? ' expanded' : ''}" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a href="#section_0" on:click={() => expanded = false}>Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="#section_1" on:click={() => expanded = false}>RSVP</a>
                    </li>
                    <li class="nav-item">
                        <a href="#section_2" on:click={() => expanded = false}>Live Stream</a>
                    </li>
                    <li class="nav-item">
                        <a href="#section_3" on:click={() => expanded = false}>Gallery</a>
                    </li>
                    <li class="nav-item">
                        <a href="#section_4" on:click={() => expanded = false}>Gift Registry</a>
                    </li>
                    <li class="nav-item">
                        <a href="#section_5" on:click={() => expanded = false}>Contact Us</a>
                    </li>
                </ul>
            </div>

            <button 
                on:click={() => expanded = !expanded}
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="{expanded}"
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </nav>
</div>

<style>
    .sticky-wrapper {
        min-height: 98px;
    }
    .navbar {
        position: fixed;
        top: 0px;
        right: 0;
        left: 0;
        z-index: 9;
        padding: 20px;
        flex-wrap: nowrap;
        justify-content: flex-start;
        display: flex;
        align-items: center;
        background: var(--white-color);
        height: 90px;
    }
    .container {
        display: flex;
        flex-wrap: inherit;
        align-items: center;
        justify-content: space-between;
        width: 100%;
    }
    .navbar-brand, .navbar-brand:hover {
        color: var(--primary-color);
    }
    .navbar-brand {
        font-family: var(--brand-font-family);
        font-size: var(--h4-font-size);
        font-weight: var(--font-weight-bold);
    }
    .navbar-collapse {
        display: flex;
        flex-basis: auto;
        flex-grow: 1;
        align-items: center;
    }
    i {
        color: var(--icon-color);
    }
    ul {
        flex-direction: row;
        margin-left: auto;
        display: flex;
        padding-left: 0;
        margin-bottom: 0;
        list-style: none;
        margin-top: 0;
    }
    li {
        color: var(--p-color);
        font-size: var(--p-font-size);
        font-weight: var(--font-weight-light);
    }
    a {
        padding-right: 0;
        padding-left: 0;
        display: inline-block;
        margin-right: 20px;
        color: var(--p-color);
        font-size: var(--menu-font-size);
        font-weight: var(--font-weight-normal);
        text-transform: uppercase;
        padding-top: 15px;
        padding-bottom: 15px;
    }
    .navbar-toggler {
        background-color: transparent;
        border: 0;
        padding: 0;
        cursor: pointer;
        margin: 0;
        width: 30px;
        height: 35px;
        outline: none;
    }
    .navbar-toggler-icon {
        display: none;
        background: var(--dark-color);
        transition: background 10ms 300ms ease;
        width: 30px;
        height: 2px;
        position: relative;
    }
    .navbar-toggler-icon:before,
    .navbar-toggler-icon:after {
        transition: top 300ms 350ms ease, -webkit-transform 300ms 50ms ease;
        transition: top 300ms 350ms ease, transform 300ms 50ms ease;
        transition: top 300ms 350ms ease, transform 300ms 50ms ease, -webkit-transform 300ms 50ms ease;
        position: absolute;
        right: 0;
        left: 0;
        background: var(--dark-color);
        width: 30px;
        height: 2px;
        content: '';
    }
    .navbar-toggler-icon:before {
        top: -8px;
    }
    .navbar-toggler-icon:after {
        top: 8px;
    }
    .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon {
        background: transparent;
    }
    .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:before {
        transform: rotate(45deg);
        top: 0;
    }
    .navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:after {
        transform: rotate(-45deg);
        top: 0;
    }
    @media (max-width: 849px) {
        .navbar-toggler-icon {
            display: block;
        }
        .navbar-collapse { 
            position: absolute;
            top: 90px;
            left: 0;
            background-color: white;
            width: 100%;
            height: 0;
            overflow: hidden;
        }
        .navbar-collapse.expanded {
            height: auto;
        }
        ul.navbar-nav {
            flex-direction: column;
            margin-left: 20px;
            margin-right: 20px;
            width: 100%;
        }
        ul.navbar-nav a {
            display: block;
            border-top: 1px solid gainsboro;
            margin-right: 0;
        }
    }
</style>
