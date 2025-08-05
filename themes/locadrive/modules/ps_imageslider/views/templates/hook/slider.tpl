{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{if $homeslider.slides}
{assign var='isMobile' value=Context::getContext()->isMobile()}
<div id="carousel" data-ride="carousel" class="carousel slide" data-interval="{$homeslider.speed}" data-wrap="{(string)$homeslider.wrap}" data-pause="{$homeslider.pause}" data-touch="true">
    {* <ol class="carousel-indicators">
        {foreach from=$homeslider.slides item=slide key=idxSlide name='homeslider'}
        <li data-target="#carousel" data-slide-to="{$idxSlide}"{if $idxSlide == 0} class="active"{/if}></li>
        {/foreach}
    </ol>
    <ul class="carousel-inner" role="listbox" aria-label="{l s='Carousel container' d='Shop.Theme.Global'}">
        {foreach from=$homeslider.slides item=slide name='homeslider'}
        <li class="carousel-item{if $smarty.foreach.homeslider.first} active{/if}" role="option" aria-hidden="{if $smarty.foreach.homeslider.first}false{else}true{/if}">
            {if isset($slide.vimeo_video) && $slide.vimeo_video|count_characters > 0}
            <video width="920" height="440" playsinline="true" autoplay="true" loop="true" muted="true">
                <source src="{$slide.vimeo_video|escape:'html':'UTF-8'}" type="video/mp4">
                {l s='Your browser does not support the video tag.' d='Modules.Egbanner.Egbanner'}
            </video>
            {else}
                <a href="{$slide.url|escape:'html':'UTF-8'}" class="slide-link">
                    <figure>
                        <picture>
                            {if !empty($slide.image_mobile_url) && $isMobile}
                                <source media="(min-width: 992px)" srcset="{$slide.image_url}">
                                <img src="{$slide.image_mobile_url}" alt="{$slide.legend|escape}" loading="lazy" width="1110" height="340">
                            {else}
                                <source media="(min-width: 992px)" srcset="{$slide.image_url}">
                                <img src="{$slide.image_url}" alt="{$slide.legend|escape}" loading="lazy" width="1110" height="340">
                            {/if}
                        </picture>
                        {if $slide.title || $slide.description}
                            <figcaption class="caption">
                                <div class="container">
                                    <div class="caption__inner">
                                        <h2>{$slide.title}</h2>
                                        <div class="caption-description">{$slide.description nofilter}</div>
                                        {if $slide.btn_1_url != '' && $slide.btn_1_title != ''}
                                            <div class="btn btn-white" onclick="event.preventDefault(); event.stopPropagation(); window.location.href='{$slide.btn_1_url}'">{$slide.btn_1_title}</div>
                                        {/if}
                                        {if $slide.btn_2_url != '' && $slide.btn_2_title != ''}
                                            <div class="btn btn-white" onclick="event.preventDefault(); event.stopPropagation(); window.location.href='{$slide.btn_2_url}'">{$slide.btn_2_title}</div>
                                        {/if}
                                    </div>
                                </div>
                            </figcaption>
                        {/if}
                    </figure>
                </a>
            {/if}
        </li>
        {/foreach}
    </ul>
    {if $homeslider.slides|count > 1}
    <div class="direction" aria-label="{l s='Carousel buttons' d='Shop.Theme.Global'}">
        <a class="left carousel-control" href="#carousel" role="button" data-slide="prev" aria-label="{l s='Previous' d='Shop.Theme.Global'}">
            <span class="icon-prev hidden-xs" aria-hidden="true">
                <i class="material-icons">&#xE5CB;</i>
            </span>
        </a>
        <a class="right carousel-control" href="#carousel" role="button" data-slide="next" aria-label="{l s='Next' d='Shop.Theme.Global'}">
            <span class="icon-next" aria-hidden="true">
                <i class="material-icons">&#xE5CC;</i>
            </span>
        </a>
    </div>
    {/if} *}
    <video id="video-banner" autoplay loop muted playsinline class="video-banner">
        <source src="{$urls.img_url}video-banner.mp4" type="video/mp4">
    </video>
    <div class="audio">
        <button id="enable-sound">
            <img width="26" height="26" src="{$urls.img_url}audio.svg" alt="user" loading="lazy">
            Activer le son
        </button>
    </div>
    
</div>
{/if}

<script>
  document.getElementById('enable-sound').addEventListener('click', function () {
    const video = document.getElementById('video-banner');
    video.muted = false;
    video.play();
  });
</script>