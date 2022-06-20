<template>
  <!-- アプリ全体をダークモードにする -->
  <v-app dark>
    <v-app-bar
      color="light-green"
      dark
      dence
      app
    >
      <v-app-bar-nav-icon @click="drawer = true" />
      <v-toolbar-title class="flex text-center">
        緑丘祭非公式アプリ
      </v-toolbar-title>
      <v-app-bar-nav-icon style="visibility:hidden;" />
    </v-app-bar>
    <v-main>
      <Nuxt />
    </v-main>
    <!-- ハンバーガーメニューの中身 -->
    <v-navigation-drawer
      v-model="drawer"
      absolute
      light
      temporary
    >
      <v-list nav>
        <v-list-item-group
          v-model="group"
          active-class="deep-purple--text text--accent-4"
        >
          <!-- 各メニューをループで作成 -->
          <v-list-item
            dense
            @click="drawer = false"
          >
            <v-list-item-action>
              <v-list-item-icon>
                <v-icon>mdi-menu</v-icon>
              </v-list-item-icon>
            </v-list-item-action>
          </v-list-item>
          <v-divider />
          <!-- for文でメニューの要素を作成 -->
          <!-- メニューの要素をタップすると、ページ遷移が起こりかつメニューを閉じるように -->
          <v-list-item
            v-for="item in naviItems"
            :key="item.title"
            :to="item.toPage"
            @click="drawer = false"
          >
            <v-list-item-icon>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-item-icon>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </v-app>
</template>

<script>
export default {
  name: 'DefaultLayout',
  data () {
    return {
      drawer: false,
      group: null,
      naviItems: [
        {
          toPage: 'map',
          icon: 'mdi-map-search',
          title: 'マップ'
        },
        {
          toPage: 'shop',
          icon: 'mdi-store-search',
          title: '出店情報'
        },
        {
          toPage: 'event',
          icon: 'mdi-calendar-search',
          title: 'イベント'
        },
        {
          toPage: 'twitter',
          icon: 'mdi-twitter',
          title: '公式Twitter'
        },
        {
          toPage: 'instagram',
          icon: 'mdi-instagram',
          title: '公式Instagram'
        }
      ]
    }
  }
}
</script>
