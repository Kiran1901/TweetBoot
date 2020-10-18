<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>TweetBoot</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.js" defer></script>
    <style>
        [x-cloak] {
            display: none;
        }
        .center {
            text-align: center;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/home.css">

</head>
<body class="antialiased sans-serif bg-gray-200">
<div>
    <div class="bg-white shadow">
        <div class="container mx-auto px-4 py-2 md:py-3">
            <div class="flex justify-between items-center">
                <div class="text-lg md:text-xl font-bold text-gray-800">TweetBoot</div>
                <div class="relative" x-data="{ open: false }" x-cloak>
                    <div @click="open = !open"
                         class="cursor-pointer font-bold w-12 h-12 bg-white flex items-center justify-center rounded-full">
                        <img class="flex items-center justify-center rounded-full"
                             src="https://www.clipartkey.com/mpngs/m/81-816025_cute-twitter-icon-png.png">
                    </div>

                    <div x-show.transition="open" @click.away="open = false"
                         class="absolute top-0 mt-12 right-0 w-48 bg-white py-2 shadow-md border border-gray-100 rounded-lg z-40">
                        <a href="#" class="block px-4 py-2 text-gray-600 hover:bg-gray-100 hover:text-blue-600">Edit
                            Profile</a>
                        <a href="#"
                           class="block px-4 py-2 text-gray-600 hover:bg-gray-100 hover:text-blue-600">Account
                            Settings</a>
                        <a href="#" class="block px-4 py-2 text-gray-600 hover:bg-gray-100 hover:text-blue-600">Sign
                            Out</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mx-auto px-4 py-10">
        <div class="md:flex -mx-4">

            <div class="md:w-1/3 px-4">
                <ul class="bg-white rounded-lg shadow mb-8">
                <li class="px-6 py-3 border-b border-gray-200">
                    <div class="font-bold text-gray-800">Filters</div>
                </li>

                <li class="px-6 py-3" class="border-b border-gray-200">
                    <label class="mt-1">Sorry, Only One User Can Stream Live Tweets. But enjoy Trending Tweets.</label>
                </li>

            </ul>
            </div>

            <div class="md:w-2/4 px-4">
                <ul>
                    <li>
                        <div id="tweets-feed">

                        </div>
                    </li>
                    <li>
                        <div class="loading text-center" style="display: none">
                            <img src="http://www.encephalopathy.or.kr/common/images/loader/ajax-loader/ajax_loader_blue_32.gif" />
                        </div>
                    </li>
                </ul>

                <%--<ul class="bg-white rounded-lg shadow mb-8">
                    <div>
                        <li class="px-6 py-5 border-b border-gray-200">
                            <div class="flex w-full">
                                <div class="flex-shrink-0 mr-5">
                                    <div class="cursor-pointer font-bold w-12 h-12 bg-gray-300 flex items-center justify-center rounded-full">
                                        <img class="flex items-center justify-center rounded-full"
                                             src="https://pbs.twimg.com/news_img/1309812624507375616/0bH9-pD6?format=jpg&name=orig">
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <div>
                                        <strong class="font-bold text-gray-800 mr-2">Kiran
                                            Italiya</strong>
                                        <span class="text-gray-600">@italiya_kiran</span>
                                        <span class="mx-1 text-gray-500">&bull;</span>
                                        <span class="text-gray-600">1d</span>
                                    </div>

                                    <div class="mb-4">
                                        <p class="text-gray-700">Someting maybe here</p>
                                    </div>

                                    <div class="relative w-auto mb-2 border rounded-lg relative bg-gray-100 mb-4 shadow-inset overflow-hidden">
                                        <div class="gg-container">
                                            <div class="gg-box square-gallery" style="margin: 0">
                                                <img class="object-cover w-full"
                                                     src="https://pbs.twimg.com/media/Ei1jTHoU8AAyl5v.jpg"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="flex items-center w-full">
                                        <div class="w-1/3 flex items-center">
                                            <div class="cursor-pointer hover:bg-gray-200 inline-flex p-2 rounded-full duration-200 transition-all ease-in-out">
                                                <svg class="h-6 w-6 text-gray-500" fill="none" viewBox="0 0 24 24"
                                                     stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-width="2"
                                                          d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"/>
                                                </svg>
                                            </div>
                                            <div class="ml-1 leading-none inline-flex text-gray-600">
                                                0
                                            </div>
                                        </div>
                                        <div class="w-1/3 flex items-center">
                                            <div class="cursor-pointer hover:bg-gray-200 inline-flex p-2 rounded-full duration-200 transition-all ease-in-out">
                                                <svg class="h-6 w-6 text-gray-500" fill="none" viewBox="0 0 24 24"
                                                     stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-width="2"
                                                          d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4"/>
                                                </svg>
                                            </div>
                                            <div class="ml-1 leading-none inline-flex text-gray-600">
                                            </div>
                                        </div>

                                        <div class="w-1/3 flex items-center">
                                            <div class="cursor-pointer hover:bg-gray-200 inline-flex p-2 rounded-full duration-200 transition-all ease-in-out">
                                                <svg class="h-6 w-6 text-gray-500" fill="none" viewBox="0 0 24 24"
                                                     stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-width="2"
                                                          d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"/>
                                                </svg>
                                            </div>
                                            <div  class="ml-1 text-gray-600 leading-none inline-flex">
                                            </div>
                                        </div>

                                        &lt;%&ndash;<div class="w-1/4 flex items-center">
                                            <div class="cursor-pointer hover:bg-gray-200 inline-flex p-2 rounded-full duration-200 transition-all ease-in-out">
                                                <svg class="h-6 w-6 text-gray-500" fill="none" viewBox="0 0 24 24"
                                                     stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                          stroke-width="2"
                                                          d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12"/>
                                                </svg>
                                            </div>
                                        </div>&ndash;%&gt;
                                    </div>
                                </div>
                            </div>
                        </li>
                    </div>
                </ul>--%>
            </div>


        </div>
    </div>
</div>

<div class="container mx-auto">
    <div class="pb-10 text-center">
        <p class="text-gray-600">By <a
                class="text-blue-600 hover:text-blue-500 border-b-2 border-blue-200 hover:border-blue-300"
                href="https://www.linkedin.com/in/kiran-italiya/">Kiran Italiya</a>.
        </p>
    </div>
</div>

<script>

    const contextPath = "${pageContext.request.contextPath}";
    let tweetsData = ${tweets};

</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js" integrity="sha512-9UR1ynHntZdqHnwXKTaOm1s6V9fExqejKvg5XMawEMToW4sSw+3jtLrYfZPijvnwnnE8Uol1O9BcAskoxgec+g==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.0/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js" integrity="sha512-iKDtgDyTHjAitUDdLljGhenhPwrbBfqTKWO1mkhSFH3A7blITC9MhYon6SjnMhp4o0rADGw9yAC6EW4t5a4K3g==" crossorigin="anonymous"></script>
<script src="js/util.js"></script>
<script src="js/trending_only.js"></script>
</body>
</html>