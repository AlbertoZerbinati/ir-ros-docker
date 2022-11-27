#include "Point.h"

#include <math.h>

CartesianPoint::CartesianPoint() {
    x = 0.0;
    y = 0.0;
    cluster = -1;
    minDist = __DBL_MAX__;
}

CartesianPoint::CartesianPoint(const double& x, const double& y) {
    this->x = x;
    this->y = y;
    cluster = -1;
    minDist = __DBL_MAX__;
}

double CartesianPoint::distance(const CartesianPoint& p) {
    return (p.x - x) * (p.x - x) + (p.y - y) * (p.y - y);
}

std::ostream& operator<<(std::ostream& os, const CartesianPoint& p) {
    os << "(x=" << p.x << ", y=" << p.y << ")";
    return os;
}

bool operator==(const CartesianPoint& lhs, const CartesianPoint& rhs) {
    return lhs.x == rhs.x && lhs.y == rhs.y;
}

PolarPoint::PolarPoint(const double& r, const double& theta) {
    this->r = r;
    this->theta = theta;
}

std::ostream& operator<<(std::ostream& os, const PolarPoint& p) {
    os << "(r=" << p.r << ", theta=" << p.theta << ")";
    return os;
}

bool operator==(const PolarPoint& lhs, const PolarPoint& rhs) {
    return lhs.r == rhs.r && lhs.theta == rhs.theta;
}

CartesianPoint toCartesian(const PolarPoint& p) {
    return CartesianPoint(p.r * cos(p.theta), p.r * sin(p.theta));
}
