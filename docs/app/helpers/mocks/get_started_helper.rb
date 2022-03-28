module Mocks::GetStartedHelper

  def get_started_dashboard_module_data
    tabs = [
      {
        id: "get-started-choice-product",
        label: "Create a product",
        graphic: %(
          <svg width="96" height="96" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="48" cy="48" r="48" fill="#8ECAFB"/>
            <path d="m69.057 40.4-21.113-5.085v39.793l21.113-5.526V40.4ZM26.833 40.4l21.111-5.085v39.793l-21.111-5.416V40.4Z" fill="#07265F"/>
            <path d="m47.768 35.491 11.12-9.24L80 31.668l-11.12 8.908-21.112-5.085Z" fill="#0072EF"/>
            <path d="m16.176 31.954 10.832 8.622 21.112-5.085-10.722-9.064-21.222 5.527Z" fill="#0072EF"/>
            <path opacity=".5" d="M47.56 30.716H32.68a.396.396 0 0 0-.395.395v13.667c0 .219.177.396.396.396H47.56a.396.396 0 0 0 .395-.396V31.112a.396.396 0 0 0-.395-.396Z" fill="url(#a)"/>
            <path d="M47.39 30.828H32.873a.396.396 0 0 0-.396.396V44.54c0 .218.177.396.396.396H47.39a.396.396 0 0 0 .396-.396V31.224a.396.396 0 0 0-.396-.396Z" fill="#F5F5F5"/>
            <path d="M35.843 33.152h-1.791a.396.396 0 0 0-.396.396v1.532c0 .218.177.395.396.395h1.79a.396.396 0 0 0 .396-.395v-1.532a.396.396 0 0 0-.395-.396Z" fill="#07265F"/>
            <path d="M47.206 33.152H37.083a.07.07 0 0 0-.07.07v.118c0 .039.032.07.07.07h10.123a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 33.925H37.083a.07.07 0 0 0-.07.07v.119c0 .038.032.07.07.07h10.123a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 36.737H33.47a.07.07 0 0 0-.07.07v.119c0 .038.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 37.512H33.47a.07.07 0 0 0-.07.07v.118c0 .04.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.117a.07.07 0 0 0-.07-.07ZM47.206 38.545H33.47a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM41.333 39.32h-7.864a.07.07 0 0 0-.07.07v.118c0 .038.031.07.07.07h7.864a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 40.35H33.47a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 41.124H33.47a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM47.206 42.156H33.47a.07.07 0 0 0-.07.07v.118c0 .04.031.07.07.07h13.737a.07.07 0 0 0 .07-.07v-.117a.07.07 0 0 0-.07-.07ZM41.333 42.931h-7.864a.07.07 0 0 0-.07.07v.119c0 .038.031.07.07.07h7.864a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07Z" fill="#E0E0E0"/>
            <path opacity=".5" d="M49.925 34.057h-14.88a.396.396 0 0 0-.395.396v13.666c0 .22.177.396.396.396h14.879a.396.396 0 0 0 .396-.395V34.453a.396.396 0 0 0-.396-.396Z" fill="url(#b)"/>
            <path d="M49.755 34.17H35.237a.396.396 0 0 0-.395.395v13.316c0 .219.177.396.395.396h14.518a.396.396 0 0 0 .395-.396V34.565a.396.396 0 0 0-.395-.396Z" fill="#fff"/>
            <path d="M38.207 36.493h-1.79a.396.396 0 0 0-.396.395v1.532c0 .219.177.396.396.396h1.79a.396.396 0 0 0 .396-.396v-1.532a.396.396 0 0 0-.396-.395Z" fill="#07265F"/>
            <path d="M49.572 36.493H39.449a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h10.123a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.572 37.267H39.449a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h10.123a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.571 40.079H35.834a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.571 40.853H35.834a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.571 41.885H35.834a.07.07 0 0 0-.07.07v.119c0 .038.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM43.697 42.66h-7.863a.07.07 0 0 0-.07.07v.119c0 .039.031.07.07.07h7.863a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.571 43.69H35.834a.07.07 0 0 0-.07.07v.118c0 .04.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.117a.07.07 0 0 0-.07-.07ZM49.571 44.465H35.834a.07.07 0 0 0-.07.07v.119c0 .038.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM49.571 45.497H35.834a.07.07 0 0 0-.07.07v.119c0 .038.031.07.07.07H49.57a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07ZM43.697 46.273h-7.863a.07.07 0 0 0-.07.07v.118c0 .039.031.07.07.07h7.863a.07.07 0 0 0 .07-.07v-.118a.07.07 0 0 0-.07-.07Z" fill="#E0E0E0"/>
            <path opacity=".5" d="M57.341 35.928H43.763V51.88h13.578V35.928Z" fill="url(#c)"/>
            <path d="M57.052 36.185H44.181v15.343h12.871V36.185Z" fill="#fff"/>
            <path opacity=".5" d="M51.318 38.624v-.386h-1.402v.386h-.982v1.894H52.3v-1.894h-.982Zm-1.231-.245h1.055v.245h-1.055v-.245Z" fill="url(#d)"/>
            <path d="M52.158 38.689h-3.082v1.733h3.082V38.69Z" fill="#07265F"/>
            <path d="M55.158 42.917h-9.051v.385h9.051v-.385ZM55.158 45.452h-9.051v.385h9.051v-.385ZM55.158 46.126h-9.051v.386h9.051v-.386ZM49.926 44.778h-3.82v.385h3.82v-.385Z" fill="#E0E0E0"/>
            <path opacity=".6" d="M55.159 44.778h-2.857v.385h2.857v-.385Z" fill="#3AD29F"/>
            <path d="M52.14 47.7h-2.856v.384h2.857V47.7Z" fill="#6C63FF"/>
            <path d="M26.833 40.4v29.292l21.111 5.416.285-29.07L26.833 40.4Z" fill="#054FB8"/>
            <path d="m69.057 69.582-21.113 5.526v-29.07L69.057 40.4v29.182Z" fill="#054FB8"/>
            <path d="M64.234 37.958h-6.226v5.982h6.226v-5.982Z" fill="url(#e)"/>
            <path d="M64.137 38.103h-6.032v5.714h6.032v-5.714Z" fill="#F5F5F5"/>
            <path d="M62.977 42.036h-3.711v.292h3.711v-.292Z" fill="#BDBDBD"/>
            <path opacity=".5" d="M65.107 24.645h-10v8.214h10v-8.214Z" fill="url(#f)"/>
            <path d="M26.832 40.4 16 49.353l21.112 5.306 10.832-8.621L26.832 40.4ZM69.057 40.4 80 49.353 58.998 54.66l-11.054-8.621L69.057 40.4Z" fill="#0072EF"/>
            <path d="M50.681 20h-7.864v6.391h7.864V20Z" fill="#F2F2F2"/>
            <path d="M50.681 20h-7.864v1.426h7.864V20Z" fill="#07265F"/>
            <path d="M50.055 21.943h-6.611v.83h6.61v-.83ZM48.269 23.399h-4.825v.282h4.825V23.4ZM46.577 23.885h-3.133v.282h3.133v-.282ZM47.58 24.37h-4.136v.282h4.135v-.282ZM48.269 24.856h-4.825v.283h4.825v-.283ZM45.058 25.342h-1.614v.282h1.614v-.282Z" fill="#E0E0E0"/>
            <path d="M64.447 25.005H54.7v7.922h9.747v-7.922Z" fill="#fff"/>
            <path d="M64.447 25.005H54.7v1.767h9.747v-1.767Z" fill="#07265F"/>
            <path d="M63.67 27.413h-8.194v1.029h8.194v-1.03Z" fill="#F5F5F5"/>
            <path d="M61.457 29.218h-5.98v.35h5.98v-.35ZM59.36 29.82h-3.883v.35h3.883v-.35ZM60.602 30.422h-5.125v.35h5.125v-.35ZM61.457 31.025h-5.98v.35h5.98v-.35ZM57.476 31.626h-2v.35h2v-.35Z" fill="#E0E0E0"/>
            <defs>
              <linearGradient id="a" x1="4418.73" y1="6069.13" x2="4418.73" y2="3692.17" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
              <linearGradient id="b" x1="4842.63" y1="6621.75" x2="4842.63" y2="4244.79" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
              <linearGradient id="c" x1="5455.17" y1="7914.93" x2="5455.17" y2="5021.28" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
              <linearGradient id="d" x1="2176.98" y1="1024.04" x2="2176.98" y2="964.954" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
              <linearGradient id="e" x1="3287.82" y1="2452.34" x2="3287.82" y2="2045.43" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
              <linearGradient id="f" x1="5126.68" y1="2304.75" x2="5126.68" y2="1537.71" gradientUnits="userSpaceOnUse">
                <stop stop-color="gray" stop-opacity=".25"/>
                <stop offset=".54" stop-color="gray" stop-opacity=".12"/>
                <stop offset="1" stop-color="gray" stop-opacity=".1"/>
              </linearGradient>
            </defs>
          </svg>
        ).html_safe,
        title: "Create your first product",
        description: "Build a course, podcast, community, or any other product you like.",
        cta: {
          label: "Create product",
          url: "#TODO-dev-url-product",
          learn_more_url: "#TODO-dev-url-learn-product",
        },
        icon: "circle-1",
      },
      {
        id: "get-started-choice-payment",
        label: "Set up payments",
        graphic: %(
          <svg width="96" height="96" viewBox="0 0 96 96" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="48" cy="48" r="48" fill="#8ECAFB"/>
            <path d="M75.3354 30H20.6646C19.193 30 18 31.178 18 32.6312V64.143C18 65.5962 19.193 66.7742 20.6646 66.7742H75.3354C76.807 66.7742 78 65.5962 78 64.143V32.6312C78 31.178 76.807 30 75.3354 30Z" fill="#0072EF"/>
            <path d="M78 35.8062H18V42.5803H78V35.8062Z" fill="#07265F"/>
            <path d="M73.1611 48.387H22.8386V52.2579H73.1611V48.387Z" fill="#F4F8FA"/>
            <path d="M27.6773 63.8711C30.3496 63.8711 32.516 61.9213 32.516 59.5162C32.516 57.1111 30.3496 55.1614 27.6773 55.1614C25.0049 55.1614 22.8386 57.1111 22.8386 59.5162C22.8386 61.9213 25.0049 63.8711 27.6773 63.8711Z" fill="#07265F"/>
          </svg>
        ).html_safe,
        title: "Set up payments",
        description: "Connect a payment provider to get paid when you sell your product.",
        cta: {
          label: "Set up payments",
          url: "#TODO-dev-url-payments",
          learn_more_url: "#TODO-dev-url-learn-payments",
        },
        icon: "circle-2",
      },
      {
        id: "get-started-choice-offer",
        label: "Create an offer",
        graphic: %(
          <svg width="96" height="96" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="48" cy="48" r="48" fill="#8ECAFB"/>
            <path d="M56.93 21H29.78a2.09 2.09 0 0 0-1.47.605c-.389.386-.608.91-.609 1.456v13.49h4.179a1.808 1.808 0 0 1 1.528.838l1.448 2.287 1.385 2.184.26.41 1.584 2.5.018.028H59.01V23.061c0-.546-.22-1.07-.61-1.456A2.09 2.09 0 0 0 56.932 21Z" fill="#07265F"/>
            <path d="M46.17 25.123H32.715c-.357 0-.699.141-.95.391a1.328 1.328 0 0 0 0 1.886c.251.25.593.39.95.39h13.453c.357 0 .699-.14.95-.39a1.328 1.328 0 0 0 0-1.886 1.35 1.35 0 0 0-.95-.39ZM53.629 31.672H32.838c-.39 0-.763.153-1.038.426a1.45 1.45 0 0 0 0 2.059c.275.273.649.426 1.038.426h20.79c.39 0 .764-.153 1.039-.426a1.45 1.45 0 0 0 0-2.059 1.474 1.474 0 0 0-1.038-.426ZM54.956 37.604a1.458 1.458 0 0 0-.541-.61 1.476 1.476 0 0 0-.787-.228h-20.79c-.032 0-.063.001-.094.003.27.147.5.36.663.62l1.449 2.286h18.772a1.475 1.475 0 0 0 1.238-.674 1.445 1.445 0 0 0 .09-1.397Z" fill="#fff"/>
            <path d="m71.678 32.618-2.117-.82-10.552-4.084-12.624-4.885a2.099 2.099 0 0 0-1.591.034c-.505.22-.9.63-1.102 1.138l-.441 1.123-1.05 2.667-1.528 3.88-1.146 2.912-.858 2.183-1.146 2.91-.86 2.184-.025.063-.137.347 1.584 2.5.018.028h29.345a1.815 1.815 0 0 1 1.404.666l.124-.312 1.515-3.847 2.367-6.016a2.05 2.05 0 0 0-.033-1.577 2.075 2.075 0 0 0-1.147-1.094Z" fill="#0072EF"/>
            <path d="m60.14 32.578-1.131-.438-11.402-4.412a1.36 1.36 0 0 0-1.029.023 1.344 1.344 0 0 0-.714.734c-.128.33-.12.697.023 1.021.143.324.41.579.742.708l3.766 1.457 4.658 1.802 3.956 1.532.153.058c.332.128.702.12 1.028-.022a1.34 1.34 0 0 0 .712-.736c.13-.33.122-.696-.021-1.02a1.34 1.34 0 0 0-.741-.707ZM64.688 41.369l-5.678-2.198-4.053-1.568-2.165-.838-5.639-2.182-1.832-.71a1.48 1.48 0 0 0-1.064-.001 1.464 1.464 0 0 0-.837.828 1.444 1.444 0 0 0 .351 1.578c.14.133.303.236.483.306l.468.181 7.517 2.91 6.77 2.62 4.611 1.786a1.475 1.475 0 0 0 1.47-.235 1.445 1.445 0 0 0 .348-1.827 1.464 1.464 0 0 0-.75-.65ZM59.01 44.638l-.365-.14-3.563-1.38-3.255-1.259-5.645-2.184-2.73-1.057a1.477 1.477 0 0 0-1.594.348 1.453 1.453 0 0 0-.408 1.038 1.443 1.443 0 0 0 .453 1.02c.14.133.304.237.483.306l1.367.53 6.818 2.638.701.27.073.03h8.074l-.41-.16ZM45.217 44.769l-.701-.271-2.932-1.135a1.477 1.477 0 0 0-1.745.533 1.446 1.446 0 0 0-.253.901h5.705l-.074-.028Z" fill="#fff"/>
            <path d="M32.08 36.431h-7.356l-.46.114-.804.343-.345.342-.115.685V73.288l.23.685.46.57.574.343.69.114h42.525l.69-.114.575-.456.46-.571.23-.716V46.587l-.115-.685-.46-.684-.69-.457-.69-.114H38.172l-4.367-6.96-.575-.685-.23-.229-.46-.228-.46-.114Z" fill="#F4F8FA"/>
          </svg>
        ).html_safe,
        title: "Create offer",
        description: "An offer lets you set a price for your product and  allows customers to make a purchase.",
        cta: {
          label: "Create offer",
          url: "#TODO-dev-url-offer",
          learn_more_url: "#TODO-dev-url-learn-offer",
        },
        icon: "circle-3",
      },
      {
        id: "get-started-choice-checkout",
        label: "Customize your checkout",
        graphic: %(
          <svg width="96" height="96" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="48" cy="48" r="48" fill="#8ECAFB"/>
            <path d="M38.392 34.636h-9.108v-3.148c0-1.197.48-2.345 1.334-3.192a4.575 4.575 0 0 1 3.22-1.322c1.208 0 2.366.476 3.22 1.322a4.494 4.494 0 0 1 1.334 3.192v3.148Zm-8.906-.2h8.704v-2.948a4.295 4.295 0 0 0-1.274-3.05 4.372 4.372 0 0 0-3.078-1.264 4.372 4.372 0 0 0-3.077 1.264 4.295 4.295 0 0 0-1.275 3.05v2.948Z" fill="#526275"/>
            <path d="M42.783 34.414a.965.965 0 0 0-.878-1.416l-20.27.539a2 2 0 0 0-1.947 1.952l-.666 28.31a2 2 0 0 0 .7 1.567l2.696 2.305a2 2 0 0 0 3.067-.585l17.298-32.672Z" fill="#526275"/>
            <path d="M46.974 35.837a2 2 0 0 0-2.044-2.02l-21.054.474a2 2 0 0 0-1.954 2.031l.472 30.434a2 2 0 0 0 2.212 1.958l20.282-2.167a2 2 0 0 0 1.787-1.968l.3-28.742Z" fill="#F4F8FA"/>
            <path d="M65.642 30.115H53.618v-4.156c0-1.58.634-3.096 1.761-4.214A6.04 6.04 0 0 1 59.63 20a6.04 6.04 0 0 1 4.251 1.745 5.933 5.933 0 0 1 1.761 4.214v4.156Zm-11.758-.264h11.492v-3.892a5.67 5.67 0 0 0-1.683-4.027 5.772 5.772 0 0 0-4.063-1.668c-1.524 0-2.985.6-4.063 1.668a5.67 5.67 0 0 0-1.683 4.027v3.892Z" fill="#07265F"/>
            <path d="M71.436 29.825a1.27 1.27 0 0 0-1.152-1.872l-27.373.727a2 2 0 0 0-1.947 1.952l-.902 38.346a2 2 0 0 0 .628 1.503l3.964 3.733a2 2 0 0 0 3.132-.507l23.65-43.882Z" fill="#07265F"/>
            <path d="M76.979 31.038a2 2 0 0 0-2.045-2.02l-29.092.656a2 2 0 0 0-1.955 2.03l.645 41.516a2 2 0 0 0 2.213 1.958l28.038-2.995a2 2 0 0 0 1.787-1.968l.409-39.177Z" fill="#0072EF"/>
          </svg>
        ).html_safe,
        title: "Customize your checkout",
        description: "Make sure your checkout page reflects your brand. Customers will use this page to make a purchase.",
        cta: {
          label: "Customize checkout",
          url: "#TODO-dev-url-checkout",
          learn_more_url: "#TODO-dev-url-learn-checkout",
        },
        icon: "circle-4",
      },
    ]

    tabs
  end
end