package com.example.experiment2.bean;

import java.util.ArrayList;
import java.util.List;

public class TrainingProgramExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TrainingProgramExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andCourseIdIsNull() {
            addCriterion("course_id is null");
            return (Criteria) this;
        }

        public Criteria andCourseIdIsNotNull() {
            addCriterion("course_id is not null");
            return (Criteria) this;
        }

        public Criteria andCourseIdEqualTo(Integer value) {
            addCriterion("course_id =", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotEqualTo(Integer value) {
            addCriterion("course_id <>", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThan(Integer value) {
            addCriterion("course_id >", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("course_id >=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThan(Integer value) {
            addCriterion("course_id <", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdLessThanOrEqualTo(Integer value) {
            addCriterion("course_id <=", value, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdIn(List<Integer> values) {
            addCriterion("course_id in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotIn(List<Integer> values) {
            addCriterion("course_id not in", values, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdBetween(Integer value1, Integer value2) {
            addCriterion("course_id between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseIdNotBetween(Integer value1, Integer value2) {
            addCriterion("course_id not between", value1, value2, "courseId");
            return (Criteria) this;
        }

        public Criteria andCourseNameIsNull() {
            addCriterion("course_name is null");
            return (Criteria) this;
        }

        public Criteria andCourseNameIsNotNull() {
            addCriterion("course_name is not null");
            return (Criteria) this;
        }

        public Criteria andCourseNameEqualTo(String value) {
            addCriterion("course_name =", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotEqualTo(String value) {
            addCriterion("course_name <>", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameGreaterThan(String value) {
            addCriterion("course_name >", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameGreaterThanOrEqualTo(String value) {
            addCriterion("course_name >=", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLessThan(String value) {
            addCriterion("course_name <", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLessThanOrEqualTo(String value) {
            addCriterion("course_name <=", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameLike(String value) {
            addCriterion("course_name like", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotLike(String value) {
            addCriterion("course_name not like", value, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameIn(List<String> values) {
            addCriterion("course_name in", values, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotIn(List<String> values) {
            addCriterion("course_name not in", values, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameBetween(String value1, String value2) {
            addCriterion("course_name between", value1, value2, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNameNotBetween(String value1, String value2) {
            addCriterion("course_name not between", value1, value2, "courseName");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIsNull() {
            addCriterion("course_nature is null");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIsNotNull() {
            addCriterion("course_nature is not null");
            return (Criteria) this;
        }

        public Criteria andCourseNatureEqualTo(String value) {
            addCriterion("course_nature =", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotEqualTo(String value) {
            addCriterion("course_nature <>", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureGreaterThan(String value) {
            addCriterion("course_nature >", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureGreaterThanOrEqualTo(String value) {
            addCriterion("course_nature >=", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLessThan(String value) {
            addCriterion("course_nature <", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLessThanOrEqualTo(String value) {
            addCriterion("course_nature <=", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureLike(String value) {
            addCriterion("course_nature like", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotLike(String value) {
            addCriterion("course_nature not like", value, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureIn(List<String> values) {
            addCriterion("course_nature in", values, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotIn(List<String> values) {
            addCriterion("course_nature not in", values, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureBetween(String value1, String value2) {
            addCriterion("course_nature between", value1, value2, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseNatureNotBetween(String value1, String value2) {
            addCriterion("course_nature not between", value1, value2, "courseNature");
            return (Criteria) this;
        }

        public Criteria andCourseMajorIsNull() {
            addCriterion("course_major is null");
            return (Criteria) this;
        }

        public Criteria andCourseMajorIsNotNull() {
            addCriterion("course_major is not null");
            return (Criteria) this;
        }

        public Criteria andCourseMajorEqualTo(String value) {
            addCriterion("course_major =", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorNotEqualTo(String value) {
            addCriterion("course_major <>", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorGreaterThan(String value) {
            addCriterion("course_major >", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorGreaterThanOrEqualTo(String value) {
            addCriterion("course_major >=", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorLessThan(String value) {
            addCriterion("course_major <", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorLessThanOrEqualTo(String value) {
            addCriterion("course_major <=", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorLike(String value) {
            addCriterion("course_major like", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorNotLike(String value) {
            addCriterion("course_major not like", value, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorIn(List<String> values) {
            addCriterion("course_major in", values, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorNotIn(List<String> values) {
            addCriterion("course_major not in", values, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorBetween(String value1, String value2) {
            addCriterion("course_major between", value1, value2, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseMajorNotBetween(String value1, String value2) {
            addCriterion("course_major not between", value1, value2, "courseMajor");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherIsNull() {
            addCriterion("course_teacher is null");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherIsNotNull() {
            addCriterion("course_teacher is not null");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherEqualTo(String value) {
            addCriterion("course_teacher =", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherNotEqualTo(String value) {
            addCriterion("course_teacher <>", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherGreaterThan(String value) {
            addCriterion("course_teacher >", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherGreaterThanOrEqualTo(String value) {
            addCriterion("course_teacher >=", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherLessThan(String value) {
            addCriterion("course_teacher <", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherLessThanOrEqualTo(String value) {
            addCriterion("course_teacher <=", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherLike(String value) {
            addCriterion("course_teacher like", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherNotLike(String value) {
            addCriterion("course_teacher not like", value, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherIn(List<String> values) {
            addCriterion("course_teacher in", values, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherNotIn(List<String> values) {
            addCriterion("course_teacher not in", values, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherBetween(String value1, String value2) {
            addCriterion("course_teacher between", value1, value2, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseTeacherNotBetween(String value1, String value2) {
            addCriterion("course_teacher not between", value1, value2, "courseTeacher");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesIsNull() {
            addCriterion("course_attributes is null");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesIsNotNull() {
            addCriterion("course_attributes is not null");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesEqualTo(String value) {
            addCriterion("course_attributes =", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesNotEqualTo(String value) {
            addCriterion("course_attributes <>", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesGreaterThan(String value) {
            addCriterion("course_attributes >", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesGreaterThanOrEqualTo(String value) {
            addCriterion("course_attributes >=", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesLessThan(String value) {
            addCriterion("course_attributes <", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesLessThanOrEqualTo(String value) {
            addCriterion("course_attributes <=", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesLike(String value) {
            addCriterion("course_attributes like", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesNotLike(String value) {
            addCriterion("course_attributes not like", value, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesIn(List<String> values) {
            addCriterion("course_attributes in", values, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesNotIn(List<String> values) {
            addCriterion("course_attributes not in", values, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesBetween(String value1, String value2) {
            addCriterion("course_attributes between", value1, value2, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andCourseAttributesNotBetween(String value1, String value2) {
            addCriterion("course_attributes not between", value1, value2, "courseAttributes");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseIsNull() {
            addCriterion("preliminary_course is null");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseIsNotNull() {
            addCriterion("preliminary_course is not null");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseEqualTo(String value) {
            addCriterion("preliminary_course =", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseNotEqualTo(String value) {
            addCriterion("preliminary_course <>", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseGreaterThan(String value) {
            addCriterion("preliminary_course >", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseGreaterThanOrEqualTo(String value) {
            addCriterion("preliminary_course >=", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseLessThan(String value) {
            addCriterion("preliminary_course <", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseLessThanOrEqualTo(String value) {
            addCriterion("preliminary_course <=", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseLike(String value) {
            addCriterion("preliminary_course like", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseNotLike(String value) {
            addCriterion("preliminary_course not like", value, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseIn(List<String> values) {
            addCriterion("preliminary_course in", values, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseNotIn(List<String> values) {
            addCriterion("preliminary_course not in", values, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseBetween(String value1, String value2) {
            addCriterion("preliminary_course between", value1, value2, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andPreliminaryCourseNotBetween(String value1, String value2) {
            addCriterion("preliminary_course not between", value1, value2, "preliminaryCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseIsNull() {
            addCriterion("followup_course is null");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseIsNotNull() {
            addCriterion("followup_course is not null");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseEqualTo(String value) {
            addCriterion("followup_course =", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseNotEqualTo(String value) {
            addCriterion("followup_course <>", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseGreaterThan(String value) {
            addCriterion("followup_course >", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseGreaterThanOrEqualTo(String value) {
            addCriterion("followup_course >=", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseLessThan(String value) {
            addCriterion("followup_course <", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseLessThanOrEqualTo(String value) {
            addCriterion("followup_course <=", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseLike(String value) {
            addCriterion("followup_course like", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseNotLike(String value) {
            addCriterion("followup_course not like", value, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseIn(List<String> values) {
            addCriterion("followup_course in", values, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseNotIn(List<String> values) {
            addCriterion("followup_course not in", values, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseBetween(String value1, String value2) {
            addCriterion("followup_course between", value1, value2, "followupCourse");
            return (Criteria) this;
        }

        public Criteria andFollowupCourseNotBetween(String value1, String value2) {
            addCriterion("followup_course not between", value1, value2, "followupCourse");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}