{if isset($items) && $items|@count > 0}
    {foreach $items as $key => $item} 
        {if $item && $item.products|@count > 0}
        <section class="featured-products">
            <div class="container">
                <div class="c-title">
                        {if $item.meta_title != '' }
                            <h2>{$item.meta_title}</h2>
                        {/if}
                        {$item.description nofilter}
                    </div>
                {include file="catalog/_partials/productlist.tpl" products=$item.products cssClass="row"}
                {if $item.lien != '' && $item.label != ''}
                <div class="featured-products__action">
                    <a class="btn btn-dark" href="{$item.lien}">{$item.label}</a>
                </div>
                {/if}
                </div>
        </section>
        {/if}
    {/foreach}
 {/if}