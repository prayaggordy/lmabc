test_that("glmabc has correct class in only continuous", {
	f <- g_contY_contX
	expect_s3_class(glmabc(f, family = "binomial", data = df), c("glmabc", "lmabc"))
})

test_that("glmabc does not have class 'glm' in only continuous", {
	f <- g_contY_contX
	expect_failure(expect_s3_class(glmabc(f, family = "binomial", data = df), "glm"))
})

test_that("glmabc has correct class with some categoricals", {
	f <- g_contY_catX
	expect_s3_class(glmabc(f, family = "binomial", data = df), c("glmabc", "lmabc"))
})

test_that("glmabc does not have class 'glm' with some categoricals", {
	f <- g_contY_catX
	expect_failure(expect_s3_class(glmabc(f, family = "binomial", data = df), "glm"))
})

test_that("glmabc gives same non-intercept coefficients as glm with g_contY_contX", {
	f <- g_contY_contX
	expect_equal(coef(glmabc(f, family = "binomial", data = df))[-1],
							 coef(glm(f, family = "binomial", data = df))[-1])
})
