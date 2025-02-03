# 1484. Group Sold Products By The Date

## Problem Statement

You are given an array of `products`, where each product is a pair `(product_name, date)` indicating the name of the product and the date it was sold.

You need to group the sold products by their `date`, and for each date, return a list of products sorted lexicographically. Additionally, the number of occurrences of each product should be counted for each specific date.

## Function Signature

```python
def groupProductsByDate(products: List[List[str]]) -> List[List[Union[str, int]]]:
