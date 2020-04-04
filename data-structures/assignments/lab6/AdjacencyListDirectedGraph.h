#ifndef LAB6_ADJACENCYLISTDIRECTEDGRAPH_H
#define LAB6_ADJACENCYLISTDIRECTEDGRAPH_H

#include <iostream>
#include <list>
#include <stdexcept>

using namespace std;

template<typename V, typename E>
class AdjacencyListDirectedGraph {

  public:

    class Vertex;
    class Edge;

    typedef list<Vertex> VertexList;
    typedef list<Edge> EdgeList;
    typedef typename VertexList::iterator VertexItor;
    typedef typename EdgeList::iterator EdgeItor;
    typedef typename VertexList::const_iterator VertexConstItor;
    typedef typename EdgeList::const_iterator EdgeConstItor;  

  private:

    struct VertexObject;
    struct EdgeObject;

    typedef list<VertexObject> VertexObjectList;
    typedef list<EdgeObject> EdgeObjectList;
    typedef list<EdgeList> IncidenceEdgesList;

    typedef typename VertexObjectList::iterator VertexObjectItor;
    typedef typename EdgeObjectList::iterator EdgeObjectItor;
    typedef typename IncidenceEdgesList::iterator IncidenceEdgesItor; 

    VertexObjectList vertex_collection;
    EdgeObjectList edge_collection;
    IncidenceEdgesList inc_edges_collection;

  public:

    /*
     * Returns the list of vertices of this graph.
     */
    VertexList vertices() {
      VertexList converted;
      for (auto &it : vertex_collection)
        converted.push_back(Vertex(&it));
      return converted;
    }

    /*
     * Returns the list of edges of this graph.
     */
    EdgeList edges() {
      EdgeList converted;
      for (auto &it : edge_collection)
        converted.push_back(Edge(&it));
      return converted;
    }

    /*
     * Adds a new vertex to this graph.
     *
     * x - the element to be stored in the new vertex.
     * Returns the newly created vertex.
     */
    Vertex insertVertex(const V& x) {
      VertexObject vertexObj = VertexObject(x);
      auto it_v = vertex_collection.insert(vertex_collection.end(), vertexObj);
      (*it_v).pos = it_v;
      auto it_e = inc_edges_collection.insert(inc_edges_collection.end(), EdgeList());
      (*it_v).inc_edges_pos = it_e;
      return Vertex(&(*it_v));
    }

    /*
     * Add a new edge to this graph. Throw an exception
     * if an edge has already existed between v and w.
     *
     * v - the vertex at the origin
     * w - the vertex at the destination
     * x - the element to be stored in the new edge.
     * Return the newly created edge.
     */
    Edge insertDirectedEdge(const Vertex& from, const Vertex& to, E x) {
      auto it_e = edge_collection.insert(edge_collection.end(), EdgeObject(from, to, x));
      (*it_e).pos = it_e;
      
      auto it_from = (*((from.v_obj)->inc_edges_pos)).insert(
          (*((from.v_obj)->inc_edges_pos)).end(),
          Edge(&(*it_e)));
      
      auto it_to = (*((to.v_obj)->inc_edges_pos)).insert(
          (*((to.v_obj)->inc_edges_pos)).end(),
          Edge(&(*it_e)));
      
      (*it_e).origin_inc_edges_pos = it_from;
      (*it_e).dest_inc_edges_pos = it_to;
      return Edge(&(*it_e));
    }

    /*
     * Remove a vertex from this graph. All edges that contain
     * v as one of their vertices are also removed.
     *
     * v - a vertex
     */
    void eraseVertex(const Vertex& v) {
      auto edges = v.incidentEdges();
      for (auto it : edges)
        eraseEdge(it);
      inc_edges_collection.erase((v.v_obj)->inc_edges_pos);
      vertex_collection.erase((v.v_obj)->pos);
    }

    /*
     * Remove an edge from this graph.
     *
     * e - an edge
     */
    void eraseEdge(const Edge& e) {
      (*((e.origin().v_obj)->inc_edges_pos)).erase((e.e_obj)->origin_inc_edges_pos);
      (*((e.dest().v_obj)->inc_edges_pos)).erase((e.e_obj)->dest_inc_edges_pos);
      edge_collection.erase((e.e_obj)->pos);
    }

};

/*
 * VertexObject stores data of a vertex.
 */
template<typename V, typename E>
struct AdjacencyListDirectedGraph<V, E> :: VertexObject {
  V elt;                             // the element stored at this vertex
  VertexObjectItor pos;              // position in vertex_collection
  IncidenceEdgesItor inc_edges_pos;  // position in inc_edges_collection

  VertexObject(V elt) : elt(elt) {}  // pos and inc_edges_pos are initially "NULL".
};

/*
 * EdgeObject stores data of an edge.
 */
template<typename V, typename E>
struct AdjacencyListDirectedGraph<V, E> :: EdgeObject {
  E elt;                          // the element stored at this edge
  Vertex from;           // the vertex at the origin
  Vertex to;             // the vertex at the destination
  EdgeObjectItor pos;             // position in edge_collection
  EdgeItor origin_inc_edges_pos;  // position in an edge list in inc_edges_collection
  EdgeItor dest_inc_edges_pos;    // position in an edge list in inc_edges_collection

  // pos origin_inc_edges_pos, and dest_inc_edges_pos are initially "NULL"
  EdgeObject(const Vertex& from, const Vertex& to, E elt)
    : elt(elt), from(from), to(to) {} 
};

template<typename V, typename E>
class AdjacencyListDirectedGraph<V, E>::Vertex {

  VertexObject *v_obj;

  public:

  /*
   * The constructor of Vertex. This subsumes the default constructor.
   *
   * v - a pointer to a VertexObject
   */
  Vertex(VertexObject* v = NULL) : v_obj(v) {}


  /*
   * Return the element stored at this vertex.
   */
  V& operator*() const {
    return v_obj->elt;
  }

  /*
   * Return a list of edges incident to this vertex.
   */
  EdgeList incidentEdges() const {
    return *(v_obj->inc_edges_pos);
  }

  /*
   * Check whether a vertex is adjacent to this vertex.
   * This means whether there is an edge that has this vertex
   * and the given vertex as the end points.
   *
   * v - the given vertex
   */
  bool isAdjacentTo(const Vertex& v) const {
    auto edges = incidentEdges();
    for (auto it : edges)
      if (it.isIncidentOn(v))
        return true;
    return false;
  }

  /*
   * Check whether there is a directed edge connecting this vertex to the given vertex.
   *
   * v - the given vertex
   */
  bool isOutgoingTo(const Vertex& v) const {
    auto edges = outgoingEdges();
    for (auto it : edges)
      if (it.isSameAs(*this, v))
        return true;
    return false;
  }

  /*
   * Return a directed edge connecting this vertex to the given vertex.
   * If the directed edge does not exist, throw an exception.
   *
   * v - the given vertex
   * Return the directed edge connecting this vertex to the given vertex.
   */
  Edge outgoingEdge(const Vertex& v) const {
    auto edges = incidentEdges();
    for (auto it : edges)
      if (it.isSameAs(*this, v))
        return it;
    throw runtime_error("Outgoing edge not found!");
  }

  /*
   * Return the set of all directed edges connecting this vertex to any vertex.
   */
  EdgeList outgoingEdges() const {
    auto edges = incidentEdges();
    EdgeList filtered;
    for (auto it : edges)
      if (it.origin() == *this)
        filtered.push_back(it);
    return filtered;
  }

  /*
   * Check whether this vertex is the same as the given vertex
   *
   * v - the given vertex
   * Return true if this vertex is the same as the given vertex
   */
  bool operator==(const Vertex& v) const {
    return v_obj == v.v_obj;
  }

  bool operator!=(const Vertex& v) const {
    return v_obj != v.v_obj;
  }

  bool operator<(const Vertex &v) const {
    return v_obj->elt < v.v_obj->elt;
  }

  /*
   * Declare friend to AdjacencyListDirectedGraph so that
   * AdjacencyListDirectedGraph can access to the private
   * member variables of this class.
   */
  friend class AdjacencyListDirectedGraph<V,E>;
};

/*
 * Edge is a position class of an edge in AdjacencyListDirectedGraph.
 * Internally, an edge is a pointer to an entry in edge_collection.
 */
template<typename V, typename E>
class AdjacencyListDirectedGraph<V, E> :: Edge {

  EdgeObject *e_obj;

  public:

  /*
   * The constructor of Edge. This subsumes the default constructor.
   *
   * v - a pointer to a EdgeObject
   */
  Edge(EdgeObject* e = NULL) : e_obj(e) {}

  /*
   * Return the element stored at this edge.
   */
  E& operator*() const {
    return e_obj->elt;
  }

  /*
   * Return the vertices of this directed edge.
   * The first element of the vertex list is the vertex of the origin.
   * The second element of the vertex list is the vertex of the destination.
   */
  VertexList endVertices() const {
    VertexList ends;
    ends.push_back(origin());
    ends.push_back(dest());
    return ends;
  }

  /*
   * Return the vertex of this edge that is different from the given vertex.
   * If the given vertex is origin, return destination.
   * If the given vertex is destination, return origin.
   * If the given vertex is neither origin nor destination, throw an exception.
   *
   * v - the given vertex
   * Return the other vertex of this edge
   */
  Vertex opposite(const Vertex& v) const {
    Vertex from = origin();
    Vertex to = dest();
    if (v != from && v != to)
      throw runtime_error("Opposite – Invalid argument!");
    return v == from ? to : from;
  }

  /*
   * Check whether a given edge is adjacent to this edge.
   * This means that whether the given edge and this edge
   * shared a vertex.
   *
   * edge - the given edge
   * Return true if the given edge is adjacent to this edge.
   */
  bool isAdjacentTo(const Edge& edge) const {
    bool share = false;
    share |= (origin() == edge.origin() || origin() == edge.dest());
    share |= (dest() == edge.origin() || dest() == edge.dest());
    return share;
  }

  bool isSameAs(const Vertex &from, const Vertex &to) {
    return origin() == from && dest() == to;
  }

  /*
   * Check whether a vertex is incident on this edge.
   * This means that whether the vertex is a vertex of this edge.
   *
   * v - the given vertex
   * Return true if the given vertex is incident to this edge.
   */
  bool isIncidentOn(const Vertex& v) const {
    return v == origin() || v == dest();
  }

  /*
   * Return the vertex at the origin of this edge.
   */
  Vertex origin() const {
    return e_obj->from;
  }

  /*
   * Return the vertex at the destination of this edge.
   */
  Vertex dest() const {
    return e_obj->to;
  }

  /*
   * Return true if this is a directed edge.
   * In this class, it should always return true.
   */
  bool isDirected() const {
    return true;
  }

  /*
   * Check whether this edge is the same as the given edge.
   *
   * edge - the given edge
   * Return true if this edge is the same as the given edge.
   */
  bool operator==(const Edge& edge) const {
    return e_obj == edge.e_obj;
  }

  /*
   * Declare friend to AdjacencyListDirectedGraph so that
   * AdjacencyListDirectedGraph can access to the private
   * member variables of this class.
   */
  friend class AdjacencyListDirectedGraph<V,E>;
};

#endif //LAB6_ADJACENCYLISTDIRECTEDGRAPH_H
