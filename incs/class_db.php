<?php
class dblib
{

    private $__conn;

    function connect()
    {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "webtintuc";

        if (!$this->__conn) {
            try {
                $this->__conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                $this->__conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                echo "Error: " . $e->getMessage();
                die();
            }
        }
    }

    function dis_connect()
    {
        if ($this->__conn) {
            $this->__conn = null;
        }
    }

    function insert($table, $data)
    {
        $this->connect();

        $field_list = '';
        $value_list = '';

        foreach ($data as $key => $value) {
            $field_list .= ",$key";
            $value_list .= ",'" . $value . "'";
        }

        $sql = 'INSERT INTO ' . $table . '(' . trim($field_list, ',') . ') VALUES (' . trim($value_list, ',') . ')';
        $stmt = $this->__conn->prepare($sql);

        return $stmt->execute();
    }

    function update($table, $data, $where)
    {
        $this->connect();
        $sql = '';
        foreach ($data as $key => $value) {
            $sql .= "$key = '" . $value . "',";
        }

        $sql = 'UPDATE ' . $table . ' SET ' . trim($sql, ',') . ' WHERE ' . $where;
        $stmt = $this->__conn->prepare($sql);

        return $stmt->execute();
    }

    function remove($table, $where)
    {
        $this->connect();

        $sql = "DELETE FROM $table WHERE $where";
        $stmt = $this->__conn->prepare($sql);

        return $stmt->execute();
    }

    //Ham lay danh sach
    function get_list($sql)
	{
		$this->connect();

		$stmt = $this->__conn->prepare($sql);
		$stmt->execute();
		$stmt->setFetchMode(PDO::FETCH_ASSOC);

		return $stmt->fetchALL();
	}

    //Ham lay 1 record duy nhat
    function get_row($sql)
    {
        $this->connect();

        $stmt = $this->__conn->prepare($sql);
        $stmt->execute();
        //Tra ve array
        $stmt->setFetchMode(PDO::FETCH_ASSOC);

        return $stmt->fetch();
    }

    function get_row_number($sql)
    {
        $this->connect();

        $stmt = $this->__conn->prepare($sql);
        $stmt->execute();

        return $stmt->fetchColumn();
    }
}
