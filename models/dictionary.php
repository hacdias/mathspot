<?php

namespace Model {

    class Dictionary extends \Model {

        protected $maxItems = 15;

        function __construct() {
            parent::__construct();
        }

        static public function isInList($itemId, $user, $list) {
            $db = new \Database(DB_TYPE, DB_HOST, DB_NAME, DB_USER, DB_PASS);

            $sql = "SELECT {$list} FROM users WHERE user = '{$user}'";
            $query = $db->select($sql);

            $items = null;

            if ($query) {

                foreach ($query as $item) {
                    $items = $item[$list];
                }

                $isInList = false;

                $items = explode(',', $items);

                for ($i = 0; $i < count($items); $i++) {

                    if ($items[$i] === $itemId) {
                        $isInList = true;
                        break;
                    }

                }

                return $isInList;

            } else {

                return 'Error';

            }
        }

        /**
         * All Items
         *
         * Get the following info related to all items list:
         * * Current Page
         * * Max Pages Number
         * * Items
         * * URL
         * This info is returned into an array.
         *
         * @param   int $n Current page number
         * @return  array   Info
         */
        public function allItems($n = 1) {
            $max = $this->db->select("SELECT count(*) FROM i_con");
            $max = $max[0]['count(*)'];

            $maxPages = $this->getMaxPage($max);
            $items = $this->db->select("SELECT * FROM i_con ORDER BY title LIMIT {$this->maxItems} OFFSET {$this->getOffset($n)}");

            $sth = array('page' => $n, 'max_pages' => $maxPages, 'items' => $items, 'url' => 'dictionary/page/');
            return $sth;
        }

        /**
         * Get the max pages number
         *
         * @param   int $n Number of items
         * @return  int     Max pages number
         */
        protected function getMaxPage($n) {
            return intval(ceil($n / $this->maxItems));
        }

        /**
         * Get query offset with page number
         *
         * @param   int $n Current page number
         * @return  int     Offset to be used in a query
         */
        protected function getOffset($n) {
            return ($n - 1) * $this->maxItems;
        }

        /**
         * Get the info related with the one item display like the previous function.
         *
         * @param   string $utitle The slugged title of the item
         * @return  array|bool      Array with the info or a boolean value if something went wrong
         */
        public function item($utitle) {
            $count = $this->db->select("SELECT count(*) FROM i_con WHERE u_title ='{$utitle}'");
            $count = $count[0]['count(*)'];

            if ($count == 0) {

                return false;

            } else {

                $items = $this->db->select("SELECT * FROM i_con WHERE u_title ='{$utitle}' LIMIT 1");

                if (!$items) {

                    return false;

                } else {

                    $sth = array('items' => $items, 'page' => 1, 'max_pages' => 1);

                    return $sth;

                }
            }
        }

        /**
         * Get the info related with a display of a category.
         *
         * @param   string $ucategory The slugged title of the category
         * @param   int $n Current Page Number
         *
         * @return  array|bool          Array with the info or a boolean value if something went wrong
         */
        public function category($ucategory, $n = 1) {
            $count = $this->db->select("SELECT count(*) FROM i_con WHERE u_category ='{$ucategory}'");
            $count = $count[0]['count(*)'];

            if ($count == 0) {

                return false;

            } else {

                $items = $this->db->select("SELECT * FROM i_con WHERE u_category ='{$ucategory}' ORDER  BY title LIMIT {$this->maxItems} OFFSET {$this->getOffset($n)}");

                $sth = array(
                    'max_pages' => $this->getMaxPage($count),
                    'url' => 'dictionary/cat/' . $ucategory . '/',
                    'page' => $n, 'items' => $items
                );

                unset($items);

                return $sth;
            }
        }

        /* function listFavLater($user, $thing) {

            $query = $this->db->query("SELECT {$thing} FROM users WHERE user ='{$user}'");

            if ($query) {

                $itemsIds = null;

                foreach ($query as $item) {
                    $itemsIds = $item[$thing];
                }

                if ($itemsIds != '' && $itemsIds != null) {

                    $itemsIds = rtrim($itemsIds, ',');

                    $items = SQL::selectAllWhereMultipleOrder('i_con', 'id', $itemsIds, 'title');

                } else {

                    echo "<div class='main {COLOR}'>
                <div class='content'><p>Ainda não adicionou itens a esta lista!</p></div></div>";

                }

            } else {

                //Consulta mal sucedida

            }
        } */

    }
}